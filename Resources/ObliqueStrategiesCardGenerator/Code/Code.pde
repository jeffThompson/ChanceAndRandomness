import processing.pdf.*;

/*
OBLIQUE STRATEGIES CARD GENERATOR
Jeff Thompson | 2021 | jeffreythompson.org

A little utility that generates printable PDFs
of new "Oblique Strategies" cards from a CSV
file. Outputs front-side cards with instructions
and back-side cards with a randomized pattern.

Design of fronts based on the Abandon Normal
Strategies cards from Abandon Normal Devices:
https://www.andfestival.org.uk/ans

See other files here for additional settings.

*/


String venue =    "Transart Institute";  // where the workshop took place
String date =     "May 2021";            // month/year
String pageSize = "A4";                  // letter or A4

String csvFilename =  "../TransartInstitute-May2021.csv";
String outputFolder = "../Cards/";

int dpi =           72;
float margin =      0.75 * dpi;
float cardSpacing = 0.75 * dpi;

int pageWidth, pageHeight;
String instructionsText, titleCardText;
Table csv;
ArrayList<Card> cards;
PGraphicsPDF pdf;
PFont font;


void settings() {
  // A4 paper
  if (pageSize.equals("A4")) {
    pageWidth =  ceil(11.75 * dpi);
    pageHeight = ceil(8.25 *  dpi);
  }
  // default to letter size
  else {
    pageSize = "Letter";
    pageWidth =  ceil(11 *  dpi);
    pageHeight = ceil(8.5 * dpi);
  }
  size(pageWidth, pageHeight);
}


void setup() { 
  instructionsText = "INSTRUCTIONS\n";
  instructionsText += "Trim your cards using the crop marks at the corners. ";
  instructionsText += "You can leave the corners square or trim them to a 3/8\" radius to match the original set.\n\n";
  instructionsText += "Optional: print the included file \"ReverseSide-" + pageSize + ".pdf\" on the back sides of the cards before trimming.";
  
  titleCardText = "Additional cards to accompany Eno and Schmidt's original \"Oblique Strategies\" deck, created by students during a workshop on chance and randomness.\n\n";
  titleCardText += venue + " • " + date;
  
  cards = new ArrayList<Card>();
  Card instructions = new Card(instructionsText, null, true);
  cards.add(instructions);
  Card titleCard = new Card(titleCardText, null, false);
  cards.add(titleCard);
  
  // load card data from file
  println("loading card data...");
  csv = loadTable(csvFilename, "header");
  String[] columns = csv.getColumnTitles();
  for (int i=1; i<columns.length; i++) {
    String personName = columns[i];
    String[] prompts = csv.getStringColumn(personName);
    for (String prompt : prompts) {
      if (prompt.length() == 0) {
        continue;
      }
      Card c = new Card(prompt, personName, false);
      cards.add(c);
    }
  }
  println("- found " + (cards.size()-2) + " cards");
  
  // pdf setup
  String pdfFilename = outputFolder + venue.replace(" ", "") + "-Cards-" + pageSize + ".pdf";
  pdf = (PGraphicsPDF) beginRecord(PDF, pdfFilename);
  font = createFont("Helvetica", 12);
  textFont(font, 12);
  
  // generate pages from cards
  println("generating pages...");
  float x = margin;
  float y = margin;
  int pageCount = 1;
  for (Card c : cards) {
    c.addToPage(x, y);
    x += c.w + cardSpacing;
    if (x + c.w > pageWidth - margin) {
      x = margin;
      y += c.h + cardSpacing;
      if (y + c.h > pageHeight - margin) {
        y = margin;
        pdf.nextPage();
        pageCount += 1;
      }
    }
  }  
  endRecord();
  println("- created " + pageCount + " pages");
  
  // generate random backs too
  println("generating random backs...");
  String backFilename = outputFolder + venue.replace(" ", "") + "-ReverseSide-" + pageSize + ".pdf";
  pdf = (PGraphicsPDF) beginRecord(PDF, backFilename);
  for (int i=0; i<pageCount; i++) {
    generateRandomBacks();
    if (i < pageCount-1) {
      pdf.nextPage();
    }
  }
  endRecord();
  println("- done");
  
  // all done, bye
  exit();
}

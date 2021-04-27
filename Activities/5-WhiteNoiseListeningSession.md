# WHITE NOISE LISTENING SESSION  

> "The first concern of all music in one way or another is to shatter the indifference of hearing, the callousness of sensibility, to create that moment of solution we call poetry, our rigidity dissolved when we occur reborn – in a sense hearing for the first time." – [Lucia Dlugoszewski](https://en.wikipedia.org/wiki/Lucia_Dlugoszewski)  

> "The white trash boys listen to their headphones / Blasting white noise in the convenience store parking lot / I hung around there wasting my time hoping you'll stop by" – Modest Mouse, *Sleepwalking*  

We'll take a pause from making things to spend some time trying to experience randomness, which we can think of as the mathematically-rigorous version of chance. While we can find randomness across many different arts fields, we'll focus here on sound, first listening to white noise (essentially just random values being heard one at a time in very rapid succession), followed by musical/sound works that embrace and push against the idea of randomness.


### WHITE NOISE  

> "Anyone who considers arithmetical methods of producing random digits is, of course, in a state of sin." – John Von Neumann (1951)  

In the 20th century, defining, creating, and measuring true randomness became important for the fields of simulation, cryptography, privacy, and data security. While Von Neumann is correct that computers are essentially deterministic, current research has produced algorithms capable of generating random numbers that rival physical sources. We'll listen to recordings made from five different white noise generators, ranging from vintage, tube-driven lab equipment to cutting-edge cryptographic tools.

| GENERATOR | PROPERTIES | NOTES |
| --------- | ------ | ----- |
| **Type 1390-B**<br>([spectrum](https://raw.githubusercontent.com/jeffThompson/ChanceAndRandomness-TransartInstitute/main/Images/WhiteNoiseSpectrumAnalysis/Type1390-B/Type1390B-Spectrograph.png)) | <ul><li>True random</li><li>Not crypto secure</li></ul> | Built in the 1950s by General Radio Company, this lab-grade generator uses vacuum tubes to generate white noise. Of note, this generator was used by RAND Corporation for the creation of their seminal book *A Million Random Digits*, which was used extensively in statistics and scientific research for decades.<br><br>The `Type 1390-B` has a fairly even frequency distribution with slight roll-off on the bottom end and a somewhat warm tube sound. |
| **AES_OFB**<br>([spectrum](https://raw.githubusercontent.com/jeffThompson/ChanceAndRandomness-TransartInstitute/main/Images/WhiteNoiseSpectrumAnalysis/AES_OFB/AESOFB-Spectrograph-TINTED.png)) | <ul><li>Pseudo random</li><li>Cryptographically secure</li></ul> | One of two high-end, "gold standard" contemporary algorithms, `AES_OFB` was designed specifically for cryptographic use. Part of the `Dieharder` software suite created by George Marsaglia of Duke University, it has been extensively tested by mathematicians for randomness.<br><br>`AES_OFB` is similar to `Threefish`, but tends to perform slightly better in localized tests for randomness. Of all the generators we will hear, `AES_OFB` has the harshest, brightest sound, hinting at its pure digital source. |
| **Congruential**<br>([spectrum](https://raw.githubusercontent.com/jeffThompson/ChanceAndRandomness-TransartInstitute/main/Images/WhiteNoiseSpectrumAnalysis/Congruential/Congruential-Spectrograph-TINTED.png)) | <ul><li>Pseudo random</li><li>Not crypto secure</li></ul> | An early algorithm for generating pseudo-random numbers, the `Congruential` generator uses its previous output to feed into the algorithm and generate new values. Using specially chosen values in the equation, this generator can have a long period of generation before it repeats, though significantly less than the other algorithms.<br><br>A bit between the `Type 1390-B` and `AES_OFB` generators, `Congruential` sounds less harsh than newer algorithms, retaining a vintage quality. |
| **dev/random**<br>([spectrum](https://raw.githubusercontent.com/jeffThompson/ChanceAndRandomness-TransartInstitute/main/Images/WhiteNoiseSpectrumAnalysis/dev-random/devrandom-Spectrograph-TINTED.png)) | <ul><li>True random</li><li>Cryptographically secure</li></ul> | This generator is a mix of physical and algorithm, using entropy from the computer’s hard drive to feed a pseudo-random number generator. Like most cryptographic generators, slow generation is considered a positive quality, and `dev/random` will stop working until sufficient entropy is built up again.<br><br>From the Mac OSX manual page for the function: “The quality of its output is however dependent on regular addition of appropriate entropy... Paranoid programmers can counteract this risk somewhat by collecting entropy of their choice.”<br><br>The sound of `dev/random` tends to be clear but less harsh than `AES_OFB`. | 


### DEEP LISTENING    
The goal here will be to try to hear the subtle differences in sound (and randomness) of each source. Performer, composer, and leading figure in experimental/electronic music [Pauline Oliveros](https://en.wikipedia.org/wiki/Pauline_Oliveros#Deep_listening) coined the term "deep listening" in 1988: 

> "*Deep* has to do with complexity and boundaries, or edges beyond ordinary orhabitual understandings — i.e. 'the subject is too deep for me' or 'she is a deep one.' A subject that is 'too deep' surpasses one’s present understanding or has too many unknown parts to grasp easily. A 'deep one' defies stereotypical knowing and may take either a long time, or never to understand or get to know. *Deep* coupled with *Listening* or *Deep Listening* for me is learning to expand the perception of sounds to include the whole space/time continuum of sound—encountering the vastness and complexities as much as possible. Simultaneously one ought to be able to target a sound or sequence of sounds as a focus within the space/time continuum and to perceive the detail or trajectory of the sound or sequence of sounds. Such focus should always return to, or be within the whole of the space/time continuum (context)." – Pauline Oliveros, [*Deep Listening: A Composer's Sound Practice*](https://monoskop.org/images/2/2c/Oliveros_Pauline_Deep_Listening_A_Composers_Sound_Practice_2005.pdf)

Really learning the process of deep listening takes a lot of practice, but today I'll ask you to try to fully immerse yourself in the act of listening, to hear below the surface, and to experience as fully as possible differences in pitch, intensity, tone, and patterns.

Take a moment and...  
* Turn up your audio to a comfortable but loud volume  
* Lie on the floor (preferable) or sit (fine too) in a way that's comfortable  
* Take a moment to focus on the task of listening  


### OTHER MUSIC/SOUNDS  
Having experienced varying degrees of randomness as sound, we'll listen to (parts of) a few pieces that move towards order to various degrees:

1. The first movement from Eliane Radigue's [*Triptych*](https://www.youtube.com/watch?v=OgN3_KXv5O8) (1978): "Sometimes it was enough to barely touch one of the recording or playback potentiometers" ([via](https://vimeo.com/8983993))  
2. Christian Marclay's [*Record Without a Cover*](https://www.youtube.com/watch?v=4QArTJnze6c) (1999): a vinyl record in a blank sleeve with the instructions: "Do not store in a protective package"  
3. Steve Reich's [*Pendulum Music*](https://www.youtube.com/watch?v=5iidNStQRDc) (1968), performed by Sonic Youth (1999): "I never have been close to John Cage but this piece was a way of saying 'OK, here it is but it isn't!'" ([via](https://www.furious.com/perfect/ohm/reich.html))  

While we won't listen to these today, you might also want to check out:  
* Ryoji Ikeda  
* Holly Herndon's *Proto*  
* Pink noise  


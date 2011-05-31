#include "pitches.h"
#include "song.h"

int mary_notes[] = 
Song Mary({NOTE_E4, NOTE_D4, NOTE_C4, NOTE_D4,NOTE_E4, NOTE_E4, NOTE_E4,NOTE_D4, NOTE_D4, NOTE_D4, NOTE_E4, 
NOTE_G4, NOTE_G4, NOTE_E4, NOTE_D4, NOTE_C4, NOTE_D4,NOTE_E4, NOTE_E4, NOTE_E4, NOTE_E4, NOTE_D4, NOTE_D4, NOTE_E4, NOTE_D4,
             NOTE_C4},{4,4,4,4,4,4,2,4,4,2,4,4,2,4,4,4,4,4,4,4,4,4,4,4,4,1}, 26);
             
/*
// Mary Had a Little Lamb
int melody[] = {NOTE_E4, NOTE_D4, NOTE_C4, NOTE_D4,
                NOTE_E4, NOTE_E4, NOTE_E4, 
                NOTE_D4, NOTE_D4, NOTE_D4, 
                NOTE_E4, NOTE_G4, NOTE_G4,
                NOTE_E4, NOTE_D4, NOTE_C4, NOTE_D4,
                NOTE_E4, NOTE_E4, NOTE_E4, NOTE_E4,
                NOTE_D4, NOTE_D4, NOTE_E4, NOTE_D4,
                NOTE_C4};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations[] =  {4,4,4,4,
                        4,4,2,
                        4,4,2,
                        4,4,2,
                        4,4,4,4,
                        4,4,4,4,
                        4,4,4,4,
                        1};

// London Bridge is Falling Down:
int melody[] = {NOTE_G4, NOTE_A4, NOTE_G4, NOTE_F4,
                NOTE_E4, NOTE_F4, NOTE_G4,
                NOTE_D4, NOTE_E4, NOTE_F4,
                NOTE_E4, NOTE_F4, NOTE_G4,
                NOTE_G4, NOTE_A4, NOTE_G4, NOTE_F4,
                NOTE_E4, NOTE_F4, NOTE_G4,
                NOTE_D4, NOTE_G4,
                NOTE_E4, NOTE_C4};
                
int noteDurations[] = {4,4,4,4,
                       4,4,2,
                       4,4,2,
                       4,4,2,
                       4,4,4,4,
                       4,4,2,
                       2,2,
                       2,2}; 
*/

// Old MacDonald Had A Farm
int melody[] = {NOTE_G4, NOTE_G4, NOTE_G4, NOTE_D4,
                NOTE_E4, NOTE_E4, NOTE_D4,
                NOTE_B4, NOTE_B4, NOTE_A4, NOTE_A4,
                NOTE_G4, NOTE_00, NOTE_D4,
                NOTE_G4, NOTE_G4, NOTE_G4, NOTE_D4,
                NOTE_E4, NOTE_E4, NOTE_D4,
                NOTE_B4, NOTE_B4, NOTE_A4, NOTE_A4,
                NOTE_G4};
                
int noteDurations[] = {4,4,4,4,
                       4,4,2,
                       4,4,4,4,
                       2,4,4,
                       4,4,4,4,
                       4,4,2,
                       4,4,4,4,
                       2}; 

void setup() {
  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < 26; thisNote++) {

    // to calculate the note duration, take one second
    // divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000/noteDurations[thisNote];
    tone(8, melody[thisNote],noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);

    // stop the tone playing:
    noTone(8);
  }
}

void loop() {
  // no need to repeat the melody.
}

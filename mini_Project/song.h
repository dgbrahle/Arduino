/*
 * song.hpp
 *
 *  Created on: May 31, 2011
 *      Author: Mike
 */

#ifndef SONG_H_
#define SONG_H_

class Song{
public:
	Song(int [], int [], int);
	void Play();
private:
	int melody[];
	int noteDurations[];
	int numOfnotes;
};

Song::Song(int m[], int nD[], int n){
        numOfnotes = n;
	melody[numOfnotes] = *m;
	noteDurations[numOfnotes] = *nD;
	
}

#endif /* SONG_H_ */

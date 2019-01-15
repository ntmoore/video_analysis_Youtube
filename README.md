# How do you do video analysis on a YouTube video?

Video analysis is a fun and interesting way to study motion in Physics.  How can you do this when the video is on YouTube?  The attached python program, [youtube_grab.ipynb](./youtube_grab.ipynb) uses the [pytube](https://pypi.org/project/pytube/) module to save a Youtube video as an mp4 video.  

The program was run from the [Jupyter Notebook](https://jupyter.org/) interface, which is a standard part of the [Anaconda Python 3](https://www.anaconda.com/download/) distribution.  

Notes on the video analysis, which was done with [Vernier's Logger Pro](https://www.vernier.com/products/software/lp/):
1. As the camera moves, I used the upper right corner ofthe left window as an origin.  The orange points are the vertical difference between the position of the bottom of the bear and the upper corner of this window.
2. I assumed the trampoline was 1m off the ground and used this as a "pixel to distance" calibration.
3. The bear hit the trampoline at ~ 14m/s.  The bear then hit the ground at ~7m/s.  The Trampoline reduces possible injury to the bear!

As this is used (by me) for research and education purposes (ie, I'm not selling the video I had python download), I believe this falls under fair use.  However, I am not an attorney and this is not legal advice.

Notes on the python code
1. There's currently an error in the pytube module that pip downloads by default.  [This link](https://stackoverflow.com/questions/54028675/pytube-library-recei) ving-pyt  I'mube-exceptions-regexmatcherror-regex-pattern-er) pointed me to an updated version.
2. The code uses the standard download in the [pytube](https://pypi.org/project/pytube/) tutorial  I'm.  

Nathan Moore
Winona State University
2019-Jan-14

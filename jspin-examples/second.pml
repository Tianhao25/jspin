/* Second attempt */
bool wantp = false, wantq = false;
byte critical = 0; 

active proctype p() {
    do 
	::
       wantp = true;
       critical++;
       assert (critical == 1);
       critical--;
       wantp = false;
    od
}

active proctype q() {
    do 
    ::
       wantq = true;
       critical++;
       assert (critical == 1);
       critical--;
       wantq = false;
    od
}

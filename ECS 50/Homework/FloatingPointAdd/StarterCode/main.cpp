  #include <cstdlib>
  #include <iostream>
  #include "MyFloat.h"
  using namespace std;

  int main(int argc, char** argv){
    float f1, f2;
    //float fres;
    MyFloat mfres;
    
    cout.precision(1000);
    if(argc != 4){
      cout<< "Usage: " << argv[0] << " float_a +/- float_b" << endl;
    } else{
      f1 = strtof(argv[1],NULL);
      f2 = strtof(argv[3],NULL);

    	MyFloat mf1(f1);
    	MyFloat mf2(f2);
    	cout << mf1 << ' '<< argv[2][0] << ' ' << mf2 << endl;
    	
    	if(argv[2][0] == '+'){ //addition
    		//fres = f1 + f2;
    		mfres = mf1.operator+(mf2);
    		//cout << "Regular Add: " << fres << endl;
    		cout << "My Add: " << mfres << endl;
    	}
    	else if(argv[2][0] == '-'){ //subtraction
    		//fres = f1 - f2;
    		mfres = mf1 - mf2;
    		//cout << "Regular Subtraction: " << fres << endl;
    		cout << "My Subtraction: " << mfres << endl;
    	} 
    	else{
    		cout << "Only + and - are supported but received operator: " << argv[2] << endl;
    	}
    	
    	//cout << "I did it = " << boolalpha << (mfres == fres) << endl;
    }
  
  
    return 0;
  }

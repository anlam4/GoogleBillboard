public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{ 
  double ten = Double.parseDouble(e.substring(0,1) + e.substring(2,11));
  boolean prime = isPrime(ten);
  int i = 2;
  while(!prime && i < e.length()-10) {
    ten = Double.parseDouble(e.substring(i, i+10));
    prime = isPrime(ten);
    i++;
  }
  if(prime)
    System.out.println(ten + " is a prime number.");
  else
    System.out.println("No ten digit prime found.");
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  //wrong
{   
  if(dNum == 1) {return false;}
  if(dNum < 0) {return false;}
  for(int i = 2; i <= Math.sqrt(dNum); i++)
  {
    if(dNum % i == 0) {return false;}
  }
  return true;  
} 

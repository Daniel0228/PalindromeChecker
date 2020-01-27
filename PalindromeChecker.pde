public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
  if(palindrome(lines[i])==true)
  {
    println(lines[i] + " IS a palindrome.");
  }else if(palindrome(reverse(lines[i]))==true){
    println(lines[i]+ " IS a palindrome");
  }else{
    println(lines[i] + " is NOT a palindrome.");
  }
  }
}
//----------------------------------------------------------------------------------------------
public boolean palindrome(String word)
{
  String nou = new String("");
  for(int i = word.length()-1;i>=0;i--){
  nou = nou + word.substring(i,i+1);
  }
  if(nou.equals(word)){
  return true;
  }
  return false;
}
//----------------------------------------------------------------------------------------------
public String reverse(String str)
{
  //REMOVES SPACES
  String sNew = new String("");
  for (int i = 0;i<str.length();i++){
  if (str.charAt(i) != ' '){
    sNew = sNew +str.charAt(i);
  }
  //ONLY ADDS LETTERS TO STRING
  if (Character.isLetter(str.charAt(i))){
    sNew = sNew+str.charAt(i);
  }
  }
  return sNew.toLowerCase();
}




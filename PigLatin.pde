public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) == 'a' ||
      sWord.charAt(i) == 'e' ||
      sWord.charAt(i) == 'i' ||
      sWord.charAt(i) == 'o' ||
      sWord.charAt(i) == 'u'){
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  //has all consonants
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  //checks if word begins with a vowel
  if (findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  //checks if word begins with qu
  if (sWord.indexOf("qu") == 0) {
    return sWord.substring(2) + "quay";
  }
  //other wise word begins with a consonant but isn't made of all consonants
  return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
}

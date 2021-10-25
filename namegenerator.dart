import 'dart:io';

import 'dart:math';

main(List<String> args) {
  var nameList = ["ahmet","alper","mehmet","ali","yaşar","ömer","hamza","isa","bahtiyar","hakan","salih","kemal","cem","furkan","nazım","mesut","savaş","mustafa","acun","enes","faruk"];
  var surnameList = ["yüceer","yılmaz","aydın","erdoğan","akseki","ankara","albayrak","ufuk","karakoç","soğan","koç","kavun","hikmet","kamil","sever","er","tuğrul","gözütok","aydoğan","boz","ılıcalı","özil"];
  var random = new Random();
  print("WELCOME TO NAME GENERATOR");
  print("--------------------------");
  var timesGenerate;
  while(timesGenerate != "y" && timesGenerate != "Y"){
    stdout.write("How many names do you want to generate:(If you want to close the program, type 'y') ");
    timesGenerate = stdin.readLineSync()!;
    if(timesGenerate == "y" || timesGenerate == "Y"){
      print("The program is ending...");
    } 
    else if(int.tryParse(timesGenerate)==null){
      print("Wrong entered! If you want to close the program, type 'Y'");
    }
    else{
      var parsedTimesGenerate = int.parse(timesGenerate);
      for(int i = 0; i< parsedTimesGenerate;i++){
        var rndmNameIx = random.nextInt(nameList.length);
        var rndmSurnameIx= random.nextInt(surnameList.length);
        print(nameList[rndmNameIx]+ " "+ surnameList[rndmSurnameIx]);
      }
      
    }
  }
  /*
  ------RANDOM GUIDE-------- 
  

  var random = new Random();
  for(var i = 0; i<100 ; i++){
    print(random.nextInt(100));
  } 
  */
}
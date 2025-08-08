

import 'package:hyperio/hyperio.dart';
 
 
void main(List<String> args) async {
  print("start");
  final HyperioAzkadev hyperio = HyperioAzkadev();
  hyperio.onNotFound = (req, res){
    return res.send("not found");
  };
  hyperio.onError = (req, res, error, stackTrace){
    return res.send("Crash: ${error} - ${stackTrace}");
  };
  hyperio.ensureInitialized();
  
  hyperio.all("/", (req,res){
    return res.send("oke");
  });
  hyperio.post("/api", (req,res){
    return res.send("hello");
  });
  await hyperio.listen(
    port: 3000,
    bindIp: "0.0.0.0",
  );
}


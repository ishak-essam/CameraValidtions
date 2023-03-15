import SwiftUI

struct ContentView: View {
  //  @State var index=1
    var isLast: Bool = false
    @State var index = 1;
     var body: some View {
 //       List{
                VStack (alignment: .center){

                    if(index == 1){
                        CircleOne
                    }
                    else if(index == 2){
                        CircleTwo
                    }
                    else if(index == 3){
                        CircleThree
                    }
                    else if(index == 4){
                        CircleFour
                    }
                    else if(index == 5){
                        CircleFive
                    }
                    Text("Tak a photo of your dricer's licence").padding()
                    HStack{
                    LazyVGrid(columns: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Columns@*/[GridItem(.fixed(200))]/*@END_MENU_TOKEN@*/) {
                        Button("upload") {
                            print(index)
                        }.frame(width: 100, height: 30).background(Color.gray).foregroundColor(.black).cornerRadius(9.0)
                         
                    } .frame(width:200, height: 160)
                    }
                    HStack{
                        Spacer()
            Button("Re-upload") {
                index = 1;
                print(index)
            }.frame(width: 100, height: 30).background(Color.white).foregroundColor(.black).cornerRadius(5.0)
            .padding()
                        Spacer()
                    Button("Click") {
                        if(index < 5 )
                        {
                        index += 1;
                            
                        }
                        print(index)
                    }.frame(width: 100, height: 30).background(Color.black).foregroundColor(.white).cornerRadius(9.0)
                   
                    Spacer()
                        
                    }   }
                
        //    }
        }
    var CircleOne: some View {
        StarsView(rating: Float(index)).padding()
    }
    var CircleTwo: some View {
        StarsView(rating: Float(index)).padding()
    }
    var CircleThree: some View {
        StarsView(rating: Float(index)).padding()
    }
    var CircleFour: some View {
        StarsView(rating: Float(index)).padding()
    }
    var CircleFive: some View {
        StarsView(rating: Float(index)).padding()
        
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

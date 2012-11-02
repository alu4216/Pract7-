require "~/LPP/Pract7/lib/clase_fraccion"

 describe Fraccion do

  before :each do

    @obj_1=Fraccion.new(1,2)
    @obj_2=Fraccion.new(2,4)
    @aux=Fraccion.new(3,5)
  end
    it"Deberia haber un numerador y denominador" do
      @obj_1.denom.should==2
      @obj_1.num.should==1
    end
   it "Deberia ser minimo el numerador y denominador" do
        p=@obj_1.num
        q=@obj_1.denom
        m=@obj_1.gcd(p,q)
        @obj_1.denom.should == q/m
        @obj_1.num.should == p/m
  end
  it "Debe salir la fraccion en forma literal " do
        m= @obj_1.to_s
	m.should == "1/2" 
   end
  it "Debe salir en flotante" do
     m=@obj_1.to_float
     m.should==0.5
  end 
  it "Deben ser iguales" do 
   m= @obj_1.<=>(@obj_2)
   m.should==0
  end
  it "Metodo abs" do
   @obj_1.abs.should== (1.0/2.0).abs
  end
  it "Metodo reciprocal" do
   @obj_1.reciprocal.should==2/1
  end
  it "Metodo -" do 
  @aux=@obj_1.opuesto
  @aux.to_float.should==-0.5
  end 
  it "Metodo +" do
   @aux= @obj_1.+(@aux)
   @aux.denom.should==10
   @aux.num.should==11
  end 
  it "Metodo -" do
   @aux= @obj_1.-(@aux)
   @aux.denom.should==10
   @aux.num.should==-1
  end
  it "Metodo *" do
   @aux=@obj_1*(@aux)
   @aux.denom.should==10
   @aux.num.should==3
  end
   it "Metodo /" do
   @aux=@obj_1/(@aux)
   @aux.denom.should==6
   @aux.num.should==5
  end
  it "Comparacion de fracciones(menor)"do
   m=@obj_1.<=>(@aux)
   m.should==-1
  end 
  it"Comparacion de fracciones (mayor)" do
  m=@aux.<=>(@obj_1)
  m.should==1
  end
  it "Comparacion de fracciones (menor o igual)" do
  m=@obj_1<=(@aux)
  m.should==-1
  end 
  it "Comparacion de fracciones (mayor o igual)" do
  m=@aux>=(@obj_1)
  m.should==1
  end
  it "Fraccion de restos de otras dos" do
  @aux=@obj_1.rest(@aux)
  @aux.denom.should==3
  @aux.num.should==1 
  end 
end




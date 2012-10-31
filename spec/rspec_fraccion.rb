require "~/LPP/Pract7/lib/clase_fraccion"

 describe Fraccion do

  before :each do

    @obj_1=Fraccion.new(1,2)
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

end




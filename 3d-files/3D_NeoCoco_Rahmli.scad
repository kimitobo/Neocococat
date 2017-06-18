    // MixTape 3d Printed Case///////////////////////////

plugHeight = 11; // [6:10]
tapeHeight = 18; //
topThickness = 1.6; 

//PCB();
//parts();

difference(){
    
    FullCase();
    
    // Power signs
    translate([37,0,tapeHeight-2]) cube([4,1.5,1],true);
    translate([37,0,tapeHeight-2]) cube([1,1.5,4],true);
    
    translate([17,0,tapeHeight-2]) cube([4,1.5,1],true); 
}


module FullCase(){
    tapeBody();
    tapeTop();
}

// Modules ///////////////////////////////

module PCB(){
 color("DarkKhaki") 
    translate ([0,0,tapeHeight+1.6]) linear_extrude(height = 1.6, center = false, convexity = 10, twist = 0) import("mixtape_case_3D_bottom.dxf", convexity=3);
 color("Gold") 
     translate ([0,0,tapeHeight+3.2]) linear_extrude(height = 0.2, center = false, convexity = 10, twist = 0) import("mixtape_case_3D_PCB.dxf", convexity=3);
    
 color("DarkKhaki") 
    translate ([0,0,tapeHeight+2*topThickness]) linear_extrude(height = 1.6, center = false, convexity = 10, twist = 0) import("mixtape_case_3D_PCB_TrapezBoard.dxf", convexity=3);
 color("Gold") 
     translate ([0,0,tapeHeight+3*topThickness]) linear_extrude(height = 0.2, center = false, convexity = 10, twist = 0) import("mixtape_case_3D_PCB_TrapezCircuit.dxf", convexity=3);
}

module tapeBody(){ 
  difference(){ 
    color("Deeppink") 
    translate ([0,0,1.6]) linear_extrude(height = tapeHeight, center = false, convexity = 10, twist = 0) import("NeoCoco_frame.dxf", convexity=3);  
    
        translate ([0,0,0.6]) linear_extrude(height = 40, center = false, convexity = 10, twist = 0) import("NeoCoco_hollow.dxf", convexity=3);
    
    //Face holes
    translate([22,0,tapeHeight-5]) cube([10,10,7],false);
      
    translate([8,5,0]) cube([38,52,50],false);

  }
}

module tapeTop(){ 
   difference(){ 
 color("Gold") 
     translate ([0,0,-1.5]) linear_extrude(height = 1.5, center = false, convexity = 10, twist = 0) import("NeoCoco_frame.dxf", convexity=3);
     
   color("Gold") 
     translate ([0,0,-2.5]) linear_extrude(height = 4, center = false, convexity = 10, twist = 0) import("NeoCoco_hollow.dxf", convexity=3);
}
    
  color("Deeppink") 
     translate ([0,0,0]) linear_extrude(height = 1.6, center = false, convexity = 10, twist = 0) import("NeoCoco_frame.dxf", convexity=3);
  color("Gold") 
  translate ([0,0,-1.3]) linear_extrude(height = 0.8, center = false, convexity = 10, twist = 0) import("NeoCoco_logo.dxf", convexity=3); 
}
 

module parts(){
    // IC-Socket
  color("Grey")
      translate([44,22.5,tapeHeight+2*topThickness]) cube([11,13,4],false);
    
  difference(){
  color("Black")
      translate([45,23.5,tapeHeight+2*topThickness]) cube([9,11,7],false);
        
    translate([49.5,34.5,tapeHeight+2*topThickness+6]) cylinder(h=10, r=1.5, center=false, ,$fn=30);
    }
    
    // NEO-Pixels
    for (a = [ 0 : 6.3 : 46 ])
    translate([a,0,0]) NEOpixel();
    
    module NEOpixel(){
    color("White")
      translate([25.2,52.5,tapeHeight+3*topThickness]) cube([5,5,2],false);
        
    color("Deeppink")
      translate([27.7,55,tapeHeight+3*topThickness]) cylinder(h=2.5, r=2, center=false, ,$fn=30);
    }
    
    // Pots
    potentiometer();
    translate ([42,0,0]) potentiometer();
    
    module potentiometer(){
    color("Grey")
      translate([29,29,tapeHeight+2*topThickness]) cylinder(h=10, r=3.5, center=false, ,$fn=30);
    
    color("Deeppink")
        translate([29,29,tapeHeight+2*topThickness+2]) cylinder(h=12, r1=6, r2=4.5, center=false, ,$fn=30);
    }
    
    // Buttons
    button();
    translate ([58,0,0]) button();
    
    module button(){
    color("Grey")
      translate([17.5,9.8,tapeHeight+2*topThickness]) cube([6,6,3],false);
        
    color("Red")
      translate([20.5,12.8,tapeHeight+2*topThickness]) cylinder(h=5, r=1.5, center=false, ,$fn=30);
    }

}

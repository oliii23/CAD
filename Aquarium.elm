-- Aquarium
myShapes model =
  [background
  
  , shark |> scale 0.4 |> move (repeatDistance 10 280 120 -model.time, -10)
  , shark |> scale 0.4 |> move (repeatDistance 20 300 150 -model.time, 30) 
  , shark |> scale 0.1 |> move (repeatDistance 40 260 100 -model.time, 10)
  , sand
  
  , bubbles |> move (1*cos(3*model.time),3*sin(model.time))
  
  , seaweed |> scale 0.5 |> move (-90,-30) |> move (5*cos(model.time),0)
  , seaweed |> scale 0.25 |> move (-50,-40) |> move (5*cos(model.time),0)
  , seaweed |> scale 0.5 |> move (-30,-30) |> move (5*cos(model.time),0)
  , seaweed |> scale 0.25 |> move (10,-40) |> move (5*cos(model.time),0)
  , seaweed |> scale 0.5 |> move (30,-30) |> move (5*cos(model.time),0)
  , seaweed |> scale 0.25 |> move (70,-40) |> move (5*cos(model.time),0)
  , seaweed |> scale 0.5 |> move (90,-30) |> move (5*cos(model.time),0)
    
  , fish (rgb 230 125 50) darkOrange |> scale 0.3 |> move (repeatDistance 20 240 -120 model.time, 0)
  , fish lightBlue darkBlue          |> scale 0.3 |> move (repeatDistance 40 260 -120 model.time, 20)
  , fish lightPurple darkPurple      |> scale 0.3 |> move (repeatDistance 10 280 -120 model.time, 30)
  , fish lightGreen darkGreen        |> scale 0.3 |> move (repeatDistance 30 240 -120 model.time, -30)
  , fish pink hotPink                |> scale 0.3 |> move (repeatDistance 50 280 -120 model.time, -20)
  , fish lightYellow darkYellow      |> scale 0.3 |> move (repeatDistance 20 240 -120 model.time, 50)
    
    -- put ahead of the fishes, it'll look more natural
  , seaweed |> scale 0.75 |> move (50,-30) |> move (5*cos(model.time),0)
  , seaweed |> scale 0.75 |> move (-70,-30) |> move (5*cos(model.time),0)
  , seaweed |> scale 0.75 |> move (-10,-30) |> move (5*cos(model.time),0)
   
  ]

fish color color2 = group [ triangle 15
                |> outlined (solid 1) black
                |> rotate (degrees 120)
                |> move (-35,0)
              , triangle 15
                |> filled color
                |> rotate (degrees 120)
                |> move (-35,0)
              , curve (-49.26,-36.17) [Pull (-49.26,-36.17) (-49.26,-36.17) ,Pull (-49.26,-36.17) (-49.26,-36.17) 
                                      ,Pull (-48.77,-36.01) (-48.28,-35.84) ,Pull (-47.79,-35.35) (-47.30,-34.86) 
                                      ,Pull (-46.97,-34.53) (-46.64,-34.20) ,Pull (-46.32,-34.37) (-45.99,-34.53) 
                                      ,Pull (-45.50,-34.70) (-45.01,-34.86) ,Pull (-44.68,-34.86) (-44.35,-34.86)
                                      ,Pull (-43.86,-34.53) (-43.37,-34.20) ,Pull (-43.04,-33.71) (-42.72,-33.22) 
                                      ,Pull (-41.73,-33.39) (-40.75,-33.55) ,Pull (-40.26,-33.55) (-39.77,-33.55)
                                      ,Pull (-39.61,-33.71) (-39.44,-33.88) ,Pull (-38.95,-34.20) (-38.46,-34.53) 
                                      ,Pull (-37.64,-33.55) (-36.82,-32.57) ,Pull (-36.17,-32.57) (-35.51,-32.57) 
                                      ,Pull (-35.35,-32.73) (-35.19,-32.90) ,Pull (-34.86,-33.39) (-34.53,-33.88) 
                                      ,Pull (-34.86,-34.37) (-35.19,-34.86) ,Pull (-42.23,-35.68) (-49.26,-36.17)]
                |> filled color2
                |> move (41,41)
                |> scale 3
              , curve (-49.26,-36.17) [Pull (-49.26,-36.17) (-49.26,-36.17) ,Pull (-49.26,-36.17) (-49.26,-36.17) 
                                      ,Pull (-48.77,-36.01) (-48.28,-35.84) ,Pull (-47.79,-35.35) (-47.30,-34.86) 
                                      ,Pull (-46.97,-34.53) (-46.64,-34.20) ,Pull (-46.32,-34.37) (-45.99,-34.53) 
                                      ,Pull (-45.50,-34.70) (-45.01,-34.86) ,Pull (-44.68,-34.86) (-44.35,-34.86)
                                      ,Pull (-43.86,-34.53) (-43.37,-34.20) ,Pull (-43.04,-33.71) (-42.72,-33.22) 
                                      ,Pull (-41.73,-33.39) (-40.75,-33.55) ,Pull (-40.26,-33.55) (-39.77,-33.55)
                                      ,Pull (-39.61,-33.71) (-39.44,-33.88) ,Pull (-38.95,-34.20) (-38.46,-34.53) 
                                      ,Pull (-37.64,-33.55) (-36.82,-32.57) ,Pull (-36.17,-32.57) (-35.51,-32.57) 
                                      ,Pull (-35.35,-32.73) (-35.19,-32.90) ,Pull (-34.86,-33.39) (-34.53,-33.88) 
                                      ,Pull (-34.86,-34.37) (-35.19,-34.86) ,Pull (-42.23,-35.68) (-49.26,-36.17)]
                |> outlined (solid 0.25) black
                |> move (41,41)
                |> scale 3
              , oval 40 65
                |> filled color
                |> rotate (degrees 90)
              , oval 40 65
                |> outlined (solid 1) black
                |> rotate (degrees 90)
              , circle 3
                |> filled black
                |> move (20, 10)
              , curve (0,0) [Pull (7,0) (10,-5)]
                |> filled black
                |> rotate (degrees 210)
                |> move (33, 0)
              , triangle 10
                |> filled color2
                |> rotate (degrees 120)
              , triangle 10
                |> outlined (solid 1) black
                |> rotate (degrees 120)
             
                ]

background = group [rect 200 150
                    |> filled (rgb 50 100 200)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (-90,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (-70,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (-50,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (-30,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (-10,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (10,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (30,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (50,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (70,-60)
                  , oval 50 30
                    |> filled lightBrown
                    |> move (90,-60)                     
                   ]
                    
sand = group [oval 50 30
                    |> filled darkBrown
                    |> move (-90,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (-70,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (-50,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (-30,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (-10,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (10,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (30,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (50,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (70,-70)
                  , oval 50 30
                    |> filled darkBrown
                    |> move (90,-70) 
                    
                   ] 
                   
bubbles = group [circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (30,40)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (-30,-40)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (15,20)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (50,-10)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (-25,46)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (50,-25)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (5,-20)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (-60,0)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (-50,50)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (-70,20)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (-90,-30)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (70,50)
               , circle 2
                   |> outlined (solid 1) white
                   |> makeTransparent 0.5
                   |> move (70,20)   
                ]
              
seaweed = group [polygon [(0,73),(1,-34),(6,10)]
                 |> filled (rgb 50 150 0)        
                 ]
                 
                 
shark = curve (-79.71,-2.127) [Pull (-77.74,-0.982) (-75.78,0.1636),Pull (-70.71,2.1278) (-65.63,4.0920)
                              ,Pull (-63.50,5.0741) (-61.38,6.0562),Pull (-58.59,6.8746) (-55.81,7.6930)
                              ,Pull (-52.37,8.6751) (-48.94,9.6572),Pull (-45.34,10.312) (-41.73,10.966)
                              ,Pull (-37.81,11.948) (-33.88,12.930),Pull (-29.62,13.421) (-25.37,13.913)
                              ,Pull (-20.29,14.404) (-15.22,14.895),Pull (-12.60,14.895) (-9.984,14.895)
                              ,Pull (-4.583,15.222) (0.8184,15.549),Pull (1.9641,15.713) (3.1099,15.877)
                              ,Pull (5.4015,19.314) (7.6930,22.751),Pull (10.639,27.335) (13.585,31.918)
                              ,Pull (15.386,34.700) (17.186,37.483),Pull (18.005,38.138) (18.823,38.792)
                              ,Pull (19.314,38.465) (19.805,38.138),Pull (19.969,37.483) (20.132,36.828)
                              ,Pull (20.460,34.864) (20.787,32.900),Pull (21.278,30.772) (21.769,28.644)
                              ,Pull (22.097,26.516) (22.424,24.388),Pull (23.079,22.751) (23.734,21.115)
                              ,Pull (24.552,19.478) (25.370,17.841),Pull (25.861,16.859) (26.352,15.877)
                              ,Pull (27.498,14.240) (28.644,12.603),Pull (29.135,11.621) (29.626,10.639)
                              ,Pull (30.936,10.148) (32.245,9.6572),Pull (34.373,9.1662) (36.501,8.6751)
                              ,Pull (39.283,8.5115) (42.066,8.3478),Pull (42.393,8.1841) (42.721,8.0204)
                              ,Pull (44.849,7.3657) (46.976,6.7109),Pull (48.122,6.7109) (49.268,6.7109)
                              ,Pull (51.396,6.0562) (53.524,5.4015),Pull (54.833,5.4015) (56.143,5.4015)
                              ,Pull (57.289,5.0741) (58.434,4.7468),Pull (60.562,6.2199) (62.690,7.6930)
                              ,Pull (63.017,5.8925) (63.345,4.0920),Pull (65.145,4.0920) (66.946,4.0920)
                              ,Pull (68.746,4.0920) (70.547,4.0920),Pull (73.984,12.603) (77.421,21.115)
                              ,Pull (78.404,24.061) (79.386,27.007),Pull (80.531,29.135) (81.677,31.263)
                              ,Pull (82.987,32.409) (84.296,33.554),Pull (85.278,34.864) (86.260,36.173)
                              ,Pull (87.242,37.156) (88.225,38.138),Pull (88.225,34.864) (88.225,31.590)
                              ,Pull (87.570,30.445) (86.915,29.299),Pull (85.442,17.677) (83.969,6.0562)
                              ,Pull (88.552,-7.856) (93.135,-21.76),Pull (88.879,-19.64) (84.624,-17.51)
                              ,Pull (82.332,-14.89) (80.040,-12.27),Pull (77.094,-8.511) (74.148,-4.746)
                              ,Pull (72.020,-5.401) (69.892,-6.056),Pull (70.547,-8.347) (71.202,-10.63)
                              ,Pull (68.419,-9.820) (65.636,-9.002),Pull (60.890,-11.94) (56.143,-14.89)
                              ,Pull (58.434,-18.00) (60.726,-21.11),Pull (53.851,-19.31) (46.976,-17.51)
                              ,Pull (44.194,-20.13) (41.411,-22.75),Pull (39.938,-21.60) (38.465,-20.46)
                              ,Pull (30.772,-22.09) (23.079,-23.73),Pull (15.222,-24.71) (7.3657,-25.69)
                              ,Pull (9.0025,-29.29) (10.639,-32.90),Pull (11.948,-34.20) (13.258,-35.51)
                              ,Pull (8.5115,-36.17) (3.7647,-36.82),Pull (1.1457,-36.33) (-1.473,-35.84)
                              ,Pull (-3.764,-34.70) (-6.056,-33.55),Pull (-7.529,-32.90) (-9.002,-32.24)
                              ,Pull (-10.63,-32.40) (-12.27,-32.57),Pull (-14.24,-31.09) (-16.20,-29.62)
                              ,Pull (-17.51,-28.15) (-18.82,-26.68),Pull (-19.47,-26.18) (-20.13,-25.69)
                              ,Pull (-33.06,-23.89) (-45.99,-22.09),Pull (-53.03,-19.96) (-60.07,-17.84)
                              ,Pull (-61.21,-17.18) (-62.36,-16.53),Pull (-63.50,-15.38) (-64.65,-14.24)
                              ,Pull (-64,-13.25) (-63.34,-12.27),Pull (-66.94,-11.13) (-70.54,-9.984)
                              ,Pull (-73.82,-8.838) (-77.09,-7.693),Pull (-78.40,-6.383) (-79.71,-5.074)
                              ,Pull (-79.71,-4.419) (-79.71,-2.127)]
                              |> filled darkCharcoal
                              |> makeTransparent 0.3
        

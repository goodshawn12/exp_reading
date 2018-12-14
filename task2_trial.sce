# SDL header part

scenario = "exp2_questions";

active_buttons = 6;
button_codes = 1,2,3,4,5,6; # Make sure 1-5 are the right numbers in Response Panel for confidence level

default_font_size = 24;
default_text_color = 200, 200, 200;

begin;

##########
# SDL part

picture {} default;

# questions from SAT 
array {
	TEMPLATE "template_task2_trial.tem" {
		question																																																															opt1 						opt2 				opt3 				opt4 					opt5 			word_code ;
		"Greek yogurt contains slightly more protein per serving, \nthereby helping people stay _____ for longer periods of time." 																							"(1) satiated"	 	"(2) fulfilled" 	"(3) complacent" 	"(4) sufficient"		"(5) ?" 	   "med2_1";
		"Kelp forests protected by sea otter absorb more carbon dioxide \nthan those where sea urchins are allowed to _____ the kelp."																						"(1) devour" 		"(2) dispatch"  	"(3) overindulge on" "(4) dispose of"	"(5) ?" 		"med2_2";
		"Planned obsolescence increases sales, but it also stands in _____ \ncontrast to a time when goods were produced to be durable."																					"(1) austere"		"(2) egregious" 	"(3) unmitigated"	"(4) stark"				"(5) ?"		"med2_3";
		"The menu was modeled after those of fine restaurants, so the food was leagues beyond the _____ fare travelers were accustomed to receiving in transit."													"(1) sinister"		"(2) surly"	  		"(3) abysmal"		"(4) icky"				"(5) ?"		"med2_4";
		"While the added preservatives keeps apples ____ and crisp for months, it also limits their scent production."																											"(1) tight"			"(2) firm"		 	"(3) stiff"			"(4) taut"				"(5) ?"		"med2_5";
		"The cats are so cherished by the museum that officials recently _____ original paintings to be made of them."																											"(1) decreed"  	"(2) commissioned""(3) forced"		"(4) licensed"			"(5) ?"		"med2_6";
		"The reason for the artist's secrecy became clear when the mural was _____."																																						"(1) confided"		"(2) promulgated"	"(3) imparted"		"(4) unveiled"			"(5) ?"		"med2_7";
		"Although advocates of organic food ____ that organic product is healthier than conventionally grown produce, this assertion is not supported by scientific research."								"(1) preserve"		"(2) carry on"		"(3) maintain"		"(4) sustain"			"(5) ?"		"med2_8";
		"Courses in psychology and human behavior may help you develop ____ collaboration skills."																																	"(1) emphatic"		"(2) paramount" 	"(3) eminent"	 	"(4) important" 		"(5) ?" 		"med2_9";
		"These models have expanded researchers' knowledge of ancient species and ____ to advance the field in the years to come."																							"(1) swear"			"(2) subscribe" 	"(3) vow"			"(4) promise"			"(5) ?"		"med2_10";
		"The Leaning Tower of Pisa attracts visitors from all over who flock to Pisa to see one of the greatest architectural _____ in the world."																	"(1) weirdnesses"	"(2) deviations" 	"(3) oddities" 	"(4) abnormalities" 	"(5) ?"		"med2_11";
		"Because a traditionalist response to the crisis --____ medical-college enrollments and expanding physician training programs--is too slow and costly, alternatives are being explored."		"(1) amping up"	"(2) bolstering" 	"(3) arounsing" 	"(4) revving up"		"(5) ?"		"med2_12";
		"The practice is almost as ____ as the medium itself."																																													"(1) elderly"		"(2) old"		 	"(3) mature"		"(4) geriatric"		"(5) ?"		"med2_13";
		"A short list of inventions ____ by NASA includes satellites, invisible braces, and cordless tools."																														"(1) elaborated" 	"(2) evolved" 		"(3) developed"	"(4) progressed"		"(5) ?"		"med2_14";
		"Organic material sent to landfills contributes to the release of methane, a very ____ greenhouse gas."																													"(1) potent"		"(2) sturdy" 	 	"(3) influential"	"(4) commanding"		"(5) ?"		"med2_15";
	};
} task2_stim_med; 

# questions from GRE
array {
	TEMPLATE "template_task2_trial.tem" {
		question																																																															opt1 				opt2 						opt3 					opt4 				opt5 				word_code;
		"The 2017 Central Mexico earthquake happened to occur on the anniversary of an earthquake in 1985 that killed thoughsants and had just that day been ____ with a national disaster drill." 	"(1) rehearsed" 	"(2) calamitous"	"(3) commemorated" "(4) bequeathed"	"(5) deracinated" 	"hard2_1";
		"The ____ effect of elevator music cannot be underestimated; several workers at the new office building reported being lulled into missing their floors entirely."									"(1) anodyne"		"(2) dolorous" 	"(3) ambient"		 "(4) hermetic"	"(5) ephemeral" 		"hard2_2";
		"Following World War II, the Dutch manufacturer Fokker developed the ____ for a small aircraft to be used exclusively for the instruction of pilots."														"(1) facsimile"	"(2) embodiment"	"(3) signifier"	 "(4) prototype"	"(5) juncture"			"hard2_3";
		"The Kavango people of Nimibia are mainly Christian, although their religious activities often ____ elements of traditional tribal rites."																	"(1) incorporate"	"(2) replicate"	"(3) identify"		 "(4) manufacture""(5) portend"			"hard2_4";
		"Merv was once a town in Persia but is now ____ Turkme"	"(1) instrument"		"(2) flavor"				"(3) dishonesty"	"(4) grave error" "(5) minor offene" "hard_5";
		"titanic"		"(1) nautical"			"(2) romantic"				"(3) enormous"		"(4) mythical"	"(5) smooth"		"hard_5";
		"rambunctious"	"(1) dependent"		"(2) energetic"			"(3) disagreeable""(4) argumentative" "(5) tame"	"hard_6";
		"disdain"		"(1) contempt"			"(2) appreciation"		"(3) descent"		"(4) fragile"	"(5) indifference""hard_7";
		"invigorate"	"(1) weaken"			"(2) import"				"(3) dispute"		"(4) stimulate""(5) delay"			"hard_8";
		"hamper"			"(1) enclose"			"(2) restrict"				"(3) approve"		"(4) lower"		"(5) balance"		"hard_9";
		
	};
} task2_stim_hard; 

############# Pictures #####################
# Introductory slides
picture {
   text {
      caption = "Experiment II:\nProblem Set";
      font_size = 36;
   };
   x = 0; y =0;
   text {
      caption = "(Press Enter to continue)";
   };
   x = 0; y = -200;
} exp2;

# [TODO] Intro slides to be modified
picture {
	text {
		caption = "Thank You and Welcome";
		font_size = 24;
	};
	x = 0; y = 150;
	text { 
		caption = "Today you will be taking a vocabulary test.\nFollowing you will see one word, and you must select the synonym."; 
		font_size = 24;
	};
	x = 0; y = 100;
	text {
		caption = "You will do this using keys 1 through 5.\nOnce you press a key, you will move on to the next word";
		font_size = 24;
	};
	x = 0; y = 0;
	text {
		caption = "(Press Enter to continue)";
		font_size = 24;
	};
	x = 0; y = -100;

} instruct_1;

# [TODO] Intro slides to be modified
picture {
	text {
		caption = "In between each question, you will see a plus sign (+)";
		font_size = 24;
	};
	x = 0; y = 150;
	text {
		caption = "When you see this, please fixate on it as long as it is on the screen.";
		font_size = 24;
	};
		x = 0; y = 0;
	text {
		caption = "(Press Enter to continue)";
	};
	x = 0; y = -100;
} intruct_2;

# [TODO] Intro slides to be modified
picture {
	text {
		caption = "There will be 6 sections with 5 questions each.";
	};
	x = 0; y = 150;
	text {
		caption = "There will be a short break between each section.";
	};
		x = 0; y = 0;
	text {
		caption = "Following is a training section.";
	};
		x = 0; y = 0;
	text {
		caption = "(Press Enter to continue)";
	};
	x = 0; y = -100;
} intruct_3;

picture {
   text {
      caption = "Rest for 1 min with eyes open";
   };
   x = 0; y =0;
} rest1;

picture {
   text {
      caption = "You are now ready to begin \n the experiment.";
	};
	x = 0; y = 0;
	text {
		caption = "(Press Enter to start)";
		font_size = 12;
   };
   x = 0; y =-100;
} start;

picture {
   text {
      caption = "Break Time!";
   };
   x = 0; y =0;
	text {
      caption = "(Press Enter to continue)";
		font_size = 12;
   };
   x = 0; y = -100;
} break;

# Stimuli for each trial
picture {
	text {
		caption = "+";
		font_size = 48;
	};
	x = 0; y =150;
} cross;

picture {
   text {
      caption = "How confident are you \n in your answer?";
		font_size = 24;
   };
   x = 0; y =+100;
   text {
      caption = "1";
		font_size = 30;
   };
	x = -150; y =-25;
	  text {
      caption = "2";
		font_size = 30;
   };
	x = -75; y =-25;
		  text {
      caption = "3";
		font_size = 30;
   };
	x = 0; y =-25;
		  text {
      caption = "4";
		font_size = 30;
   };
	x = 75; y =-25;
		  text {
      caption = "5";
		font_size = 30;
   };
	x = 150; y =-25;
		  text {
      caption = "(completely unsure)";
		font_size = 12;
   };
	x = -150; y =-75;
		  text {
      caption = "(very confident)";
		font_size = 12;
   };
	x = 150; y =-75;
} question_1;

################# Trials ###########################
# Introductory trial
trial {
   trial_type = first_response;
   trial_duration = forever;
   
   picture exp2;
   code = "exp2";
} intro;

trial {
   trial_type = first_response;
   trial_duration = forever;
  
	picture instruct_1;
	code = "instruct_1";
} exp_instruct;

# Rest
trial {
	trial_duration = 2000; 	# msec [TODO] CHANGE AT THE END TO 60k
	
	stimulus_event {
		picture rest1;
		code = "rest1";
	} event_rest;
} rest;

# Start experiment
trial {
	trial_type = first_response;
	trial_duration = forever;
	
	picture start;
	code = "start";
} exp_start;

# Fixation point
trial {
	# Cross 
	picture cross;
	time = 0;
	duration = 1000;
   code = "cross";
} fix;

# Confidence question
trial {
	trial_type = first_response;
	trial_duration = forever;
	
	# Ask confidence level
	picture question_1;
	time = 300;
	code = "end_trial";
} sure;

# Break
trial {
	trial_type = first_response;
   trial_duration = forever;
	
	picture break;
   code = "break";
} exp_break;

begin_pcl;

# PCL part
int num_trial_per_block = 5;
int num_block = 2;

# append all stimuli
array<trial> task2_stim_all [0];
task2_stim_all.append( task2_stim_med );
task2_stim_all.append( task2_stim_hard );

# shuffle the word array before running the loop
task2_stim_all.shuffle();

# General introduction
begin		
	intro.present();
	exp_instruct.present();
	rest.present();
end;

/*
# Training bloack
loop int trainID = 1 until trainID > task1_stim_train.count()
	begin
		fix.present();
		task1_stim_train[ trainID ].present();
		sure.present();
			
		trainID = trainID + 1;
	end; 
*/

# Introduction to experiment
begin
	exp_start.present();
	rest.present();
end;
	
# Experiment
loop int blockID = 1 until blockID > num_block
begin
	loop int trialID = 1 until trialID > num_trial_per_block  # task1_stim_all.count()
	begin
		# event1.set_stimulus( task1_stim_all[ (blockID-1)*num_block + trialID ] );
		# event1.set_event_code( task1_stim_all[trialID].description() );
		# exp1_main_trial.present();
		fix.present();
		task2_stim_all[ (blockID-1)*num_trial_per_block + trialID ].present();
		sure.present();
		
		trialID = trialID + 1;
	end;
	
	if (blockID != num_block) then
		exp_break.present();
	end;
	
	blockID = blockID + 1;
end;
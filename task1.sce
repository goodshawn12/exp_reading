# SDL header part

scenario = "exp1_vocabulary";

active_buttons = 6;
button_codes = 1,2,3,4,5,6; # Make sure 1-5 are the right numbers in Response Panel for confidence level

default_font_size = 24;
default_text_color = 200, 200, 200;

begin;

##########
# SDL part

picture {} default;

# words from SSAT lower level
array {
	TEMPLATE "template_task1_trial.tem" {
		question			opt1 				opt2 				opt3 				opt4 				opt5 				word_code ;
		"cold" 			"(1) kind" 		"(2) sick"		"(3) chilly"	"(4) light"		"(5) hot" 			"easy_1";
		"cooperate"		"(1) join" 		"(2) help" 		"(3) delay"		"(4) finish"	"(5) substitute" 	"easy_2";
		"sleepy"			"(1) perky"		"(2) fast"		"(3) tired"		"(4) sad"		"(5) hungry"		"easy_3";
		"difficult"		"(1) soft"		"(2) hard"		"(3) light"		"(4) gentle"	"(5) simple"		"easy_4";
		"frantic"		"(1) inferior"	"(2) worried"	"(3) reluctant""(4) paranoid"	"(5) depressed"	"easy_5";
		"frightful"		"(1) horrible" "(2) deceitful""(3) vengeful"	"(4) shameful"	"(5) spectacular"	"easy_6";
		"brief"			"(1) hide"		"(2) long"		"(3) short"		"(4) secret"	"(5) manuscript"	"easy_7";
		"admire"			"(1) crave"		"(2) pretty"	"(3) desire"	"(4) delight"	"(5) appreciate"	"easy_8";
		"unusual"		"(1) bad"		"(2) native"	"(3) regular"	"(4) abnormal" "(5) appropriate" "easy_9";
		"edit"			"(1) reuse"		"(2) revise"	"(3) reduce"	"(4) reduce"	"(5) redefine"		"easy_10";
	};
} task1_stim_easy; 

# words from SSAT upper level
array {
	TEMPLATE "template_task1_trial.tem" {
		question			opt1 						opt2 							opt3 					opt4 				opt5 				word_code;
		"integrate" 	"(1) bring togther" 	"(2) settle accounts"	"(3) press on"		"(4) create"	"(5) argue" 		"med_1";
		"predicament"	"(1) forecast"		 	"(2) plight" 				"(3) sorrow"		"(4) regret"	"(5) dominance" 	"med_2";
		"rendevous"		"(1) response"			"(2) invitation"			"(3) score"			"(4) meeting"	"(5) momento"		"med_3";
		"eulogize"		"(1) condemn"			"(2) preach"				"(3) flatter"		"(4) commend"	"(5) put down"		"med_4";
		"peccadillo"	"(1) instrument"		"(2) flavor"				"(3) dishonesty"	"(4) grave error" "(5) minor offene" "med_5";
		"titanic"		"(1) nautical"			"(2) romantic"				"(3) enormous"		"(4) mythical"	"(5) smooth"		"med_5";
		"rambunctious"	"(1) dependent"		"(2) energetic"			"(3) disagreeable""(4) argumentative" "(5) tame"	"med_6";
		"disdain"		"(1) contempt"			"(2) appreciation"		"(3) descent"		"(4) fragile"	"(5) indifference""med_7";
		"invigorate"	"(1) weaken"			"(2) import"				"(3) dispute"		"(4) stimulate""(5) delay"			"med_8";
		"hamper"			"(1) enclose"			"(2) restrict"				"(3) approve"		"(4) lower"		"(5) balance"		"med_9";
		
	};
} task1_stim_medium; 

# words from GRE upper level
array {
	TEMPLATE "template_task1_trial.tem" {
		question			opt1 						opt2 							opt3 					opt4 				opt5 				word_code;
		"abeyance" 		"(1) suspense" 		"(2) stalemate"			"(3) laziness"		"(4) enquiry"	"(5) obscure" 		"hard_1";
		"compendium"	"(1) bold"		 		"(2) compilation"			"(3) objective"	"(4) surplus"	"(5) enlargement"	"hard_2";
		"egress" 		"(1) saying" 			"(2) expand"				"(3) departure"	"(4) disregard""(5) changeable" 	"hard_3";
		"fracas" 		"(1) citation"	 		"(2) unusual"				"(3) refrain"		"(4) scuffle"	"(5) expert"		"hard_4";
		"iconoclast" 	"(1) attraction" 		"(2) embodiment"			"(3) powerful"		"(4) old"		"(5) critic"		"hard_5";
		"lambaste" 		"(1) chastise" 		"(2) hold back"			"(3) compliment"	"(4) repeal"	"(5) indifferent"	"hard_6";
		"neophyte" 		"(1) perfectionist" 	"(2) beginner"				"(3) affliction"	"(4) attentive""(5) boaster"		"hard_7";
		"polemic" 		"(1) shameful"			"(2) grumpy"				"(3) rant"			"(4) sneer"		"(5) flashy" 		"hard_8";
		"quiescence" 	"(1) agreement"		"(2) offense"				"(3) disloyal"		"(4) inactivity""(5) approval"	"hard_9";
		"umbrage" 		"(1) attack"			"(2) complain"				"(3) admiration"	"(4) tense"		"(5) insult" 		"hard_10";
#		"winnow" 		"(1) sift out" 		"(2) ?"						"(3) ?"				"(4) ?"			"(5) ?"		 		"hard_11";
	};
} task1_stim_hard; 

# Introductory slides
picture {
   text {
      caption = "Experiment I:\nVocabulary Flashcard";
      font_size = 36;
   };
   x = 0; y =0;
   text {
      caption = "(Press response button to continue)";
   };
   x = 0; y = -200;
} exp1;

picture {
   text {
      caption = "Rest for 1 min with eyes open";
   };
   x = 0; y =0;
} rest1;

picture {
   text {
      caption = "Press response button to start the experiment";
		font_size = 12;
   };
   x = 0; y =0;
} start;

picture {
   text {
      caption = "Break Time!";
   };
   x = 0; y =0;
	text {
      caption = "(Press response button to continue)";
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
	x = 0; y =100;
} cross;

picture {
   text {
      caption = "How confident are you \n in your answer?";
		font_size = 24;
   };
   x = 0; y =+100;
   text {
      caption = "1";
		font_size = 24;
   };
	x = -100; y =0;
	  text {
      caption = "2";
		font_size = 24;
   };
	x = -50; y =0;
		  text {
      caption = "3";
		font_size = 24;
   };
	x = 0; y =0;
		  text {
      caption = "4";
		font_size = 24;
   };
	x = 50; y =0;
		  text {
      caption = "5";
		font_size = 24;
   };
	x = 100; y =0;
		  text {
      caption = "(completely unsure)";
		font_size = 12;
   };
	x = -100; y =-25;
		  text {
      caption = "(very confident)";
		font_size = 12;
   };
	x = 100; y =-25;
} question_1;

# Introductory trial
trial {
   trial_type = first_response;
   trial_duration = forever;
   
   picture exp1;
   code = "exp1";
};

# Rest
trial {
	trial_duration = 2000; 	# msec
	
	stimulus_event {
		picture rest1;
		code = "rest1";
	} event_rest;
};

# Start experiment
trial {
	trial_type = first_response;
	trial_duration = forever;
	
	picture start;
	code = "start";
};

# Fixation point
trial {
	# Cross 
	picture cross;
	time = 0;
	duration = 800;
   code = "cross";
} fix;

# Task 1: present words and collect responses
/*
trial {
	trial_type = first_response;
	trial_duration = forever;

	# Word
   stimulus_event {
      nothing {};
		time = 300;
		code = "word_code"; # Change to code for specific image
   } event1;
	
} exp1_main_trial;
*/

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
int num_trial_per_block = 2;
int num_block = 2;

# append all stimuli
array<trial> task1_stim_all [0];
task1_stim_all.append( task1_stim_easy );
task1_stim_all.append( task1_stim_medium );
task1_stim_all.append( task1_stim_hard );

# shuffle the word array before running the loop
task1_stim_all.shuffle();

loop int blockID = 1 until blockID > num_block
begin
	loop int trialID = 1 until trialID > num_trial_per_block  # task1_stim_all.count()
	begin
		
		# present the cross
		fix.present();
		
		# present the problem
		task1_stim_all[ (blockID-1)*num_block + trialID ].present();
		
		# present the questionnaire
		sure.present();
		
		trialID = trialID + 1;
	end;
	
	if (blockID != num_block) then
		exp_break.present();
	end;
	
	blockID = blockID + 1;
end;
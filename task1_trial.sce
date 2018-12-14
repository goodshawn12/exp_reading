################################################### Header #####################################################
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

################################################## Vocabulary ######################################################
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
		"compress"		"(1) reduce"	"(2) expand"	"(3) purify"	"(4) maintain"	"(5) exchange"		"easy_11";
		"notify"			"(1) inform"	"(2) define"	"(3) liberate"	"(4) respond"	"(5) howl"			"easy_12";
		"advise"			"(1) vacate"	"(2) encourage""(3) enlighten""(4) submit"	"(5) guide"			"easy_13";
		"swift"			"(1) steady"	"(2) sensitive""(3) quick"		"(4) loud"		"(5) presistent"	"easy_14";
		"imitate"		"(1) copy"		"(2) differ"	"(3) stray"		"(4) converse"	"(5) reveal"		"easy_15";
		"excel"			"(1) extend"	"(2) radiate"	"(3) overpower""(4) attempt"	"(5) shine"			"easy_16";
		"aroma"			"(1) setting"	"(2) atmosphere""(3) sound"	"(4) scent"		"(5) environment"	"easy_17";
		"convert"		"(1) change"	"(2) allow"		"(3) stay"		"(4) discover"	"(5) detail"		"easy_18";
		"dedicate"		"(1) etch"		"(2) share"		"(3) sign"		"(4) partition""(5) devote"		"easy_19";
		"hearty"			"(1) fragile"	"(2) weak"		"(3) legendary""(4) strong"	"(5) exhausted"	"easy_20";
		"resemble"		"(1) observe"	"(2) appear"	"(3) tolerate"	"(4) mirror"	"(5) consider"		"easy_21";
		"periodically" "(1) occasionally""(2) rarely""(3) always"	"(4) frequently""(5) never"		"easy_22";
		"annually"		"(1) hourly"	"(2) yearly"	"(3) monthly"	"(4) weekly"	"(5) daily"			"easy_23";
		"naturally"		"(1) temporarily""(2) slyly"	"(3) genuinely""(4) quickly"	"(5) angrily"		"easy_24";
		"interior"		"(1) amplified""(2) complete"	"(3) outgoing"	"(4) pensive"	"(5) inside"		"easy_25";
		"extract"		"(1) remove"	"(2) inter"		"(3) persuade"	"(4) applaud"	"(5) expect"		"easy_26";
		"irresponsible""(1) gigantic"	"(2) mature"	"(3) immense"	"(4) miniature""(5) immature"		"easy_27";
		"superior"		"(1) worse"		"(2) worst"		"(3) found"		"(4) lost"		"(5) better"		"easy_28";
		"prepared"		"(1) desolate"	"(2) emergency""(3) unintentional""(4) fortunate""(5) ready"	"easy_29";
		"postpone"		"(1) delay"		"(2) intend"	"(3) desire"	"(4) commence"	"(5) dispel"		"easy_30";

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
		"peccadillo"	"(1) instrument"		"(2) flavor"				"(3) minor offense""(4) grave error""(5) dishonesty" "med_5";
		"titanic"		"(1) nautical"			"(2) romantic"				"(3) enormous"		"(4) mythical"	"(5) smooth"		"med_6";
		"rambunctious"	"(1) dependent"		"(2) argumentative"		"(3) disagreeable""(4) energetic""(5) tame"			"med_7";
		"disdain"		"(1) contempt"			"(2) appreciation"		"(3) descent"		"(4) fragile"	"(5) indifference""med_8";
		"invigorate"	"(1) weaken"			"(2) import"				"(3) dispute"		"(4) stimulate""(5) delay"			"med_9";
		"hamper"			"(1) enclose"			"(2) restrict"				"(3) approve"		"(4) lower"		"(5) balance"		"med_10";
		"scoff"			"(1) join"				"(2) polish"				"(3) make fun of"	"(4) seek out"	"(5) wear out"		"med_11";
		"quip"			"(1) loud call"		"(2) witticism"			"(3) remark"		"(4) question"	"(5) rude request""med_12";
		"potpurri"		"(1) assignment"		"(2) assistance"			"(3) accessory"	"(4) assortment""(5) allotment"	"med_13";
		"onerous"		"(1) practical"		"(2) deceitful"			"(3) truthful"		"(4) syncopated""(5) difficult"	"med_14";
		"fallow"			"(1) unused"			"(2) tiny"					"(3) worldly"		"(4) widespread""(5) youthful"	"med_15";
		"aggravate"		"(1) eke out"			"(2) settle down"			"(3) make worse"	"(4) pass by"	"(5) go without"	"med_16";
		"depreciated"	"(1) calmed"			"(2) admitted"				"(3) strengthened""(4) accepted"	"(5) devalued"		"med_17";
		"expect"			"(1) scuffle"			"(2) conceal"				"(3) demolish"		"(4) antipate"	"(5) minimize"		"med_18";
		"emulate"		"(1) imitatie"			"(2) sympathize"			"(3) exclude"		"(4) return"	"(5) deter"			"med_19";
		"contradict"	"(1) agree"				"(2) dispute"				"(3) underline"	"(4) accept"	"(5) acclaim"		"med_20";
		"mitigate"		"(1) destroy"			"(2) pamper"				"(3) lessen"		"(4) study"		"(5) design"		"med_21";
		"onus"			"(1) completeness"	"(2) spirituality"		"(3) self-regard"	"(4) arrogance""(5) burden"		"med_22";
		"imperative"	"(1) regal"				"(2) rushed"				"(3) alluring"		"(4) necessary""(5) thoughtful"	"med_23";
		"pompous"		"(1) fast"				"(2) arrogant"				"(3) formal"		"(4) threatening""(5) reserved"	"med_24";
		"assuage"		"(1) increase"			"(2) insult"				"(3) critique"		"(4) soothe"	"(5) excite"		"med_25";
		"malice"			"(1) amusement"		"(2) intelligence"		"(3) pessimism"	"(4) hatred"	"(5) admiration"	"med_26";
		"improvident"	"(1) fortunate"		"(2) energized"			"(3) incomprehensible""(4) poor"	"(5) careless"		"med_27";
		"pristine"		"(1) clean"				"(2) prudish"				"(3) adaptable"	"(4) important""(5) primitive"	"med_28";
		"flaunt"			"(1) show off"			"(2) flag"					"(3) hide from"	"(4) tease"		"(5) work with"	"med_29";
		"wane"			"(1) brag"				"(2) cleanse"				"(3) enlarge"		"(4) fade"		"(5) react"			"med_30";
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
		"umbrage" 		"(1) attack"			"(2) complain"				"(3) admiration"	"(4) tense"		"(5) offense" 		"hard_10";
		"abjure" 		"(1) reject"			"(2) welcome"				"(3) accept"		"(4) treat"		"(5) evaporate" 	"hard_11";
		"anodyne" 		"(1) deceive"			"(2) inoffensive"			"(3) harmful"		"(4) ruthless"	"(5) questionable""hard_12";
		"bilk" 			"(1) muscular"			"(2) signal"				"(3) deceive"		"(4) slim"		"(5) avoid" 		"hard_13";
		"canard" 		"(1) fact"				"(2) complaint"			"(3) disbelief"	"(4) gossip"	"(5) selection" 	"hard_14";
		"catalyst" 		"(1) gem"				"(2) observation"			"(3) comparison"	"(4) substance""(5) stimulus" 	"hard_15";
		"catharsis" 	"(1) relief"			"(2) symbol"				"(3) attack"		"(4) wish"		"(5) treatment"	"hard_16";
		"coterie" 		"(1) fine dish"		"(2) clique"				"(3) cultish"		"(4) support"	"(5) cohort" 		"hard_17";
		"conscript" 	"(1) ask"				"(2) agreement"			"(3) recruit"		"(4) experience""(5) install" 	"hard_18";
		"diurnal" 		"(1) manuscript"		"(2) tangible"				"(3) periodic"		"(4) daily"		"(5) general" 		"hard_19";
		"dross" 			"(1) ugly"				"(2) zesty"					"(3) hopeless"		"(4) agreement""(5) junk" 			"hard_20";
		"eddy" 			"(1) swirl"				"(2) vary"					"(3) delineate"	"(4) evaporate""(5) flap" 			"hard_21";
		"frenetic" 		"(1) controlled"		"(2) wild"					"(3) quick"			"(4) careless"	"(5) overview" 	"hard_22";
		"gambit" 		"(1) goal"				"(2) intend"				"(3) scheme"		"(4) comfort"	"(5) amusing" 		"hard_23";
		"immutable" 	"(1) malleable"		"(2) loud"					"(3) quiet"			"(4) permanent""(5) reckless" 	"hard_24";
		"laconic" 		"(1) lazy"				"(2) motivated"			"(3) tired"			"(4) grateful"	"(5) brief" 		"hard_25";
		"milieu" 		"(1) background"		"(2) entangle"				"(3) smelly"		"(4) contrive"	"(5) hopeless" 	"hard_26";
		"nexus" 			"(1) combination"		"(2) connection"			"(3) futuristic"	"(4) goals"		"(5) inconclusive""hard_27";
		"opine" 			"(1) miss"				"(2) desire"				"(3) suggest"		"(4) demand"	"(5) cautious" 	"hard_28";
		"panache" 		"(1) chocolate"		"(2) self-conscious"		"(3) conscientious""(4) style"	"(5) mild" 			"hard_29";
		"quotidian" 	"(1) excess"			"(2) seldom"				"(3) maintain"		"(4) average"	"(5) daily" 		"hard_30";
		
		
	};
} task1_stim_hard; 

# training words
array {
	TEMPLATE "template_task1_trial.tem" {
		question			opt1 						opt2 							opt3 					opt4 				opt5 				word_code;
		"superb" 		"(1) excellent" 		"(2) awful"				"(3) fast"			"(4) elegant"	"(5) imitate" 		"train_1";
		"lacuna"			"(1) nocturnal"		"(2) water"				"(3) fetch"			"(4) gap"		"(5) trust"			"train_2";
		"caustic" 		"(1) cold" 				"(2) cheerful"			"(3) ordinary"		"(4) festive"	"(5) bitter" 		"train_3";
		"nag" 			"(1) petite"	 		"(2) kind"				"(3) annoy"			"(4) admire"	"(5) relate"		"train_4";
		"effigy" 		"(1) marble"	 		"(2) statue"			"(3) riddle"		"(4) import"	"(5) speech"		"train_5";
	};
} task1_stim_train; 

######################################### Pictures ####################################################
# Introductory slides
picture {
   text {
      caption = "Experiment I:\nVocabulary Flashcard";
      font_size = 36;
   };
   x = 0; y =50;
   text {
      caption = "(Press Enter to continue)";
   };
   x = 0; y = -200;
} exp1;

picture {
	text {
		caption = "Thank you and welcome!";
		font_size = 34;
	};
	x = 0; y = 175;
	text { 
		caption = "Today you will be taking a vocabulary \n test. In this test, you will see one word, and \n you must select the synonym."; 
		font_size = 20;
	};
	x = 0; y = 50;
	text {
		caption = "You will do this using keys 1 through 5. \n Once you press a key, you will move on \n to the next word.";
		font_size = 20;
	};
	x = 0; y = -100;
	text {
		caption = "(Press Enter to continue)";
		font_size = 12;
	};
	x = 0; y = -200;

} instruct1;

picture {
	text {
		caption = "In between each question, you will \n see a plus sign (+). Please fixate on it \n for as long as it is on the screen.";
		font_size = 24;
	};
	x = 0; y = 0;
	text {
		caption = "(Press Enter to continue)";
		font_size = 12;
	};
	x = 0; y = -200;
} instruct2;

picture {
	text {
		caption = "There will be 9 sections with 10 \n questions each and a short break \n between each section.";
		font_size = 24;
	};
	x = 0; y = 100;
	text {
		caption = "The following is a training section \n with 5 example questions.";
		font_size = 24;
	};
		x = 0; y = -50;
	text {
		caption = "(Press Enter to continue)";
		font_size = 12;
	};
	x = 0; y = -200;
} instruct3;

picture {
   text {
      caption = "Rest for 1 min with eyes open";
   };
   x = 0; y =0;
} rest1;

picture {
   text {
      caption = "Press Enter to start";
		font_size = 30;
   };
   x = 0; y = 0;
} rest_start;

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

############################################# Trials ###########################################
# Introductory trial
trial {
   trial_type = first_response;
   trial_duration = forever;
   
   picture exp1;
   code = "exp1";
} intro;

trial {
   trial_type = first_response;
   trial_duration = forever;
  
	picture instruct1;
	code = "instruct1";
} exp_instruct1;

trial {
   trial_type = first_response;
   trial_duration = forever;
  
	picture instruct2;
	code = "instruct2";
} exp_instruct2;

trial {
   trial_type = first_response;
   trial_duration = forever;
  
	picture instruct3;
	code = "instruct3";
} exp_instruct3;

# Rest
trial {
	trial_duration = 60000; 	# msec
	
	stimulus_event {
		picture rest1;
		code = "rest1";
	} event_rest;
} rest;

trial {
	trial_type = first_response;
	trial_duration = forever;
	
	picture rest_start;
	code = "rest_start";
} exp_rest_start;

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

/*
# Task 1: present words and collect responses
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
int num_trial_per_block = 10;
int num_block = 9;

# append all stimuli
array<trial> task1_stim_all [0];
task1_stim_all.append( task1_stim_easy );
task1_stim_all.append( task1_stim_medium );
task1_stim_all.append( task1_stim_hard );

# shuffle the word array before running the loop
task1_stim_all.shuffle();

#################################### Begin Experiment ######################################################
# General introduction
begin		
	intro.present();
	exp_instruct1.present();
	exp_instruct2.present();
	exp_instruct3.present();
	rest.present();
	exp_rest_start.present();
end;

# Training bloack
loop int trainID = 1 until trainID > task1_stim_train.count()
	begin
		fix.present();
		task1_stim_train[ trainID ].present();
		sure.present();
			
		trainID = trainID + 1;
	end; 

# Introduction to experiment
begin
	exp_start.present();
	rest.present();
	exp_rest_start.present();
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
		task1_stim_all[ (blockID-1)*num_trial_per_block + trialID ].present();
		sure.present();
		
		trialID = trialID + 1;
	end;
	
	if (blockID != num_block) then
		exp_break.present();
	end;
	
	blockID = blockID + 1;
end;
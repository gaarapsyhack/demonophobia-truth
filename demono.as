
	title "Demonophobia"
	screen 0,800,600,0
	width ,,100,50
	pos 0,0 : color 0,0,0 : mes "now loading"
	redraw 0
	buffer 2 : picload "seta.bmp" ;(185,256)
	buffer 3 : picload "setb.bmp";(118,93)
	buffer 4 : picload "esmalla.bmp"
	buffer 5 : picload "room1a.bmp"	
	buffer 6 : picload "items.bmp"
	buffer 7 : picload "itemset.bmp"
	buffer 8 : picload "setc.bmp"
	buffer 9 : picload "filtera.bmp"
	buffer 11 : picload "facea.bmp"
	buffer 12 : picload "meswindow.bmp"
	buffer 14 : picload "prideset.bmp"
	buffer 19 : picload "ono.bmp"
	buffer 20 : picload "essmalla.bmp"
	buffer 22 : picload "setd.bmp"
	buffer 24 : picload "emiddle.bmp"
	buffer 26 : picload "leas.bmp"
	buffer 28 : picload "kagebito.bmp"
	buffer 30 : picload "pause.bmp"
	buffer 32 : picload "ehyper.bmp"
	buffer 34 : picload "mama.bmp"
	buffer 36 : picload "bress.bmp"
	buffer 38 : picload "wire.bmp"
	buffer 50 : picload "maptatuset.bmp"
	buffer 70 : picload "continue.bmp"
	;(buffr10,13,15,17,21,23,25,27�̓C�x���g�p)
	;buffer100�̓X�g�b�N�p
	;(buffer19�̓��V�t�F���̕���);(buffer14�̓��V�t�F���p)
	;--------------------------------�Q�[���X�^�[�g���̏���
	;z=90 x=88 Space=32 shift=16 f=70 a=65 r=82
	cx=400 : cy=200 : dir=0 : fx=0 : fdx=740 : pi=3.14159265
	;�����F������̓����蔻��@ x 89~113 y 95
	figure=0
	gsel 0
	gmode 2
	enam=100 : itonam=1 : itonam2=1 : dragn=50
	dim en,enam : dim enx,enam : dim endir,enam : dim etype,enam : dim kro,enam : dim estun,enam
	dim ehit,enam : dim dir_enemy,enam : dim kroatk,enam
	dim ito,enam*4 : dim itox,enam*4 : dim itodir,enam*4
	dim kumo_keikai,enam : dim kumopos,enam : dim kumo,enam : dim kumo_count,enam : dim kumoito,enam*4
	dim trap,enam : dim trapx,enam : dim hittrap,enam : dim trapdam,enam
	dim pate1,enam : dim fe1x,enam : dim pate2,enam : dim fe2x,enam : dim pate3,enam : dim fe3x,enam
	dim pate4,enam : dim fe4x,enam : dim pate5,enam : dim fe5x,enam
	dim warmhant,enam : dim warmstun,enam : dim warm_on,enam : dim pate6,enam : dim fe6x,enam : dim hitwarm,enam
	dim pira_on,enam : dim pira,enam : dim pirastun,enam : dim pirahant,enam : dim hitpira,enam : dim piraatkdir,enam
	dim piramov,enam : dim pate8,enam : dim fe8x,enam : dim fe8y,enam
	dim eny,enam : wshibuki=185
	dim hillatk,enam : dim pate7,enam : dim fe7x,enam : dim fe7y,enam : dim hillhant,enam : dim hillmov,enam
	dim hilljumpa,enam : dim hilljumpb,enam
	dim hithill,enam : dim poshillx,enam : dim poshilly,enam : dim poshilldy,enam
	dim kuthill,enam : dim kuthillpat,enam : dim kuthillpatf,enam : dim poshilldwx,enam : dim poshilldwy,enam
	dim drag1,dragn : dim drag2,dragn : dim drag3,dragn
	bkemu=20
	dim bkemu1x,3 : dim bkemu2x,bkemu : dim bkemu2y,bkemu : dim bkemu2ydir,bkemu : dim bktype,bkemu
	dim bkemu3x,3 : dim bkemu2_on,bkemu : dim bkemu2p,bkemu : dim bkemu2f,bkemu : dim bkemukemu,bkemu
	dim bkemu2hit,bkemu : dim bgassstun,bkemu
	dim hitbag,enam : dim posbagx,enam : dim posbagy,enam : dim posbagdy,enam
	dim posbagdwx,enam : dim posbagdwy,enam : dim kutbag,enam : dim kutbagpatf,enam
	dim bagflyx,enam : dim bagflyy,enam : dim bagfly_on,enam : dim bagflyt,enam
	dim kutbagpat,enam
	dim babble_on,enam : dim babbled,enam : dim fe9x,enam : dim fe9y,enam : dim pate9,enam : dim babblep,enam : dim babblef,enam
	dim babbleheadx,enam

	dim kaza,enam : dim pate10,enam : dim fe10x,enam : dim pate11,enam : dim fe11x,enam : dim pate15,enam : dim fe15x,enam
	dim kazaspin,enam
	dim pate12,enam : dim fe12x,enam : dim pate14,enam : dim fe14x,enam
	dim mamaatk,enam : dim maatkp,enam : dim maknife,enam : dim maatkx,enam : dim mamastun,enam
	dim hitkuti,enam : dim hitdog,enam : dim hitmama,enam : dim hitjairo,enam : dim kaza_on,enam

	dim sizuku,enam : dim sizuku_on,enam : dim sizukux,enam : dim sizukuy,enam : dim sizukufall,enam : dim sizukup,enam
	dim floa,enam : dim floap,enam : dim floadir,enam : dim floax,enam : dim floafx,enam : dim floafp,enam
	dim slaim,enam : dim slaimx,enam : dim slaimfx,enam : dim slaimfp,enam
	dim mamahand,enam : dim mamaatk2,enam : dim hitmama2,enam : dim mamahand_on,enam : dim marance,enam : dim hitsizuku,enam





dim leascube,enam : dim leasball,enam : dim leasneedle,enam : dim leasballx,enam : dim leasbally,enam : dim leasneedlex,enam
dim leasneedley,enam : dim leascubex,enam : dim leascubep,enam : dim leascubedir,enam
dim leasball_on,enam : dim leasneedle_on,enam : dim leasneedle2_on,enam
dim leasballdir,enam : dim leasballdiry,enam : dim leasballdirx,enam : dim poscube,enam
dim hitleasball,enam : dim hitleasneedle,enam

	repeat enam
	kazaspin.cnt=0.0
	loop
	
	dim savep,5

	redraw 0 : color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1
	
    exist "save.dat"
	if strsize = -1 : savep=0,0,0,0,0 : bsave "save.dat",savep
	bload "save.dat",savep
    kisei=1
	if savep.1>0 {
		area=1
		savelimit=1
		buffer 10 : picload "area.bmp":gsel 0
		if savep.0=1873692 : savelimit=2
		if savep.0=2581763 : savelimit=3
		if savep.0=3131196 : savelimit=4
		if savep.0=4822132 : savelimit=5
		if savep.0=5713276 : savelimit=6
		if savep.0=6883715 : savelimit=7
		wait 30
		repeat
		redraw 0
		pos 0,0 : gmode 0 : gcopy 10,0,0,800,600
		font "�l�r ����",20
		pos 0,0 : mes"�G���A��I�����Ă�������\n\n���F�߂�@���F�i��  Enter : ����"
		stick areap
		if (areap=2)&(area>1) : area-
		if (areap=8)&(area<savelimit) : area+
		if areap=32 : break
		font "�l�r ����",40
		if area<=6 : pos 320,250 : mes "�G���A"+area+"" : else : pos 320,250 : mes "�H�H�H"
		redraw 1
		await 1
		loop
		redraw 0
		color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1
		wait 100
		if area=1{
			gosub *event
			canmovL=70 : canmovR=590
			map=1 : stage=1
			mapsizeX=800 : mapsizeY=600 : mappos=0 : color 255,255,255 : font "�l�r �S�V�b�N",30
		}
		if area=2{
			point=600
					dir=0
					buffer 5 : picload "room5a.bmp" : gsel 0
					buffer 10 : picload "room5b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=620
					figure=0 : life=100 : stmn=1000
					gosub *mapmov
					map=8 : scl=0
					bossmode=0 : stage=2
		}
		if area=3{
			stage=3 : ev1=1 : ev10=1
			point=300
			buffer 5 : picload "room15a.bmp" : gsel 0
			mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
			figure=0
			gosub *mapmov
			map=21 : scl=0 : life=100 : stmn=1000
		}
		if area=4{
			stage=4 : dir=1
			point=100
			buffer 5 : picload "room30a.bmp" : gsel 0
			mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
			figure=0
			gosub *mapmov
			map=49 : scl=0 : life=100 : stmn=1000
		}
		if area=5{
			stage=5 : dir=0
			point=650
			buffer 5 : picload "roomhoso.bmp" : gsel 0
			mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=660
			mapitem=0
			figure=0
			gosub *mapmov
			map=70 : scl=1 : sclp=400 : sclM=400 : gendo=-400
			}
		if area=6{
			point=80 : stage=6
			buffer 5 : picload "room50a.bmp"
			buffer 2 : picload "setacore.bmp"
			buffer 3 : picload "setbcore.bmp"
			buffer 8 : picload "setccore.bmp"
			buffer 11 : picload "facea.bmp"
			buffer 36 : picload "bress.bmp"
			buffer 50 : picload "maptatuco.bmp"
			buffer 51 : picload "freez.bmp"
			buffer 52 : picload "sumi.bmp"
			buffer 53 : picload "dice.bmp" : gsel 0
			mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
			mapitem=0
			figure=0
			gosub *mapmov
			map=98 : scl=0 : sclM=0
			}
			if area=7{
			point=650 : dir=1 : stage=6
			buffer 5 : picload "passlast.bmp"
			buffer 2 : picload "setacore.bmp"
			buffer 3 : picload "setbcore.bmp"
			buffer 8 : picload "setccore.bmp"
			buffer 11 : picload "facea.bmp"
			buffer 36 : picload "bress.bmp"
			buffer 50 : picload "maptatuco.bmp"
			buffer 51 : picload "freez.bmp"
			buffer 52 : picload "sumi.bmp"
			buffer 53 : picload "dice.bmp" : gsel 0
			mapsizeX=3000 : mapsizeY=600 : mappos=-1000 : canmovL=70 : canmovR=800
			mapitem=0
			figure=0
			itemnam=16 : gosub *getitem
			itemnam=0
			potion=-3 : gosub *getdrag
			potion=-2 : gosub *getdrag
			potion=-1 : gosub *getdrag
			potion=0
			gosub *mapmov
			map=122 : scl=0
			}
		color 255,255,255 : font "�l�r �S�V�b�N",30
	}
	else{
		gosub *event
		canmovL=70 : canmovR=590
		map=1 : stage=1
		mapsizeX=800 : mapsizeY=600 : mappos=0 : color 255,255,255 : font "�l�r �S�V�b�N",30
	}
	randomize

	
	stmn=1000
	life=100
*main
			;���C������
			gosub *key
			gosub *enemy
			gosub *hit
			gosub *draw
			gosub *event
			await 1
			goto *main			

*key		
	;----------------------���łɏ�ԏ���
	sumhit=0
	leasmov=0
			repeat enam
				sumhit+=ehit.cnt
			loop
			;-----------------------�L�[����
	
	if stun=1 : return;�d��
	getkey gkp,80
	if (poseoff=1)&(gkp=0) : poseoff=0
	if (gkp=1)&(poseoff=0) : gosub *pose
	getkey gkup,38
	if stun=2 : return
	if throw=1 {
		stick a,5   ;(1+4)
		if (thgkz=0)&(throw_on=0) : thpower=0
		getkey thgkz,90
		getkey thgkx,88
		if a=1 : dir=0
		if a=4 : dir=1
		if (thgkz=1)&(thpower<101) : thpower+ : throw_on=1
		if (thgkz=0)&(throw_on=1) {
			throwout=1 : stun=1 : throwp=0 : thgrand=0 : thdown=0 : throw_on=0 : item_used=100 : item_del=1
			if dir=0 : thx=cx+43 : else : thx=cx+130
			thy=cy+103
			gosub *useitems : gosub *useitem
			gosub *useitems : gosub *useitem
			item_used=0
			using=0
		}
		if thgkx=1 : throw=0 : thpower=0 : throw_on=0 : stun=0 : thgkz=0 : thgkx=0
		return
	}
	if omoev=1 {
		stick a,8   ;8
		if a=8 : dead=13 : omoev=0 : gosub *event_dead
		return
	}
	;stick a ,61	: stmn+=1000 : ev10=1	;1+4+8+16(+32);�e�X�g�p�����
	stick a ,29		;1+4+8+16
	if now_equip=0 : getkey gkz,90
	if now_equip>0 {
		if recomand_c<=0 : getkey gkc,67
		if gkc=1{
			if equipB=1 : item_used=103
			if equipC=1 : item_used=102
			recomand_c=30 : gkc=0
		}
		recomand_c-
	}
	if now_equip>0{;----------------�����A�C�e���̎g�p
		if equipstun<=0 : getkey equipz,90
		if (equipz=1)&(equipatk=0){
			stun=1 : sclob=0
			eqatkp=0
			equipatk=1
		}
		equipstun-
	}
	if (burstp<=0)&(BOSSH=1) : getkey gkc2,67
	getkey gkx,88
	getkey gka,65
	getkey gkf,70
			if a&16 : select_on=1 : gosub *item_select
			if select_on=0 : gosub *useitem : redbox=50
			if (recomandA<=0)&(gkf=1) {
				if select_on=1 {
					if kisei=1 : kisei=0 : else : kisei=1
				}
				recomandA=30
			}
			if (recomandF<=0)&(gka=1) {	
				if faceoff=1 : faceoff=0 : else : faceoff=1
				recomandF=30
			}
			recomandF-
			recomandA-
			if (a=5)|(select_on=1) {
					if down=0 : a=0 : else : a=8
				}
			if (a=13) : a=8
			if (cantstand=1)&(a=0) : a=8
			if (gkx=1)&(stmn>100)&(down=0)&((a=1)|(a=4))&(BOSSC=0)&(slow=0) : dash=1 : else : dash=0
			if down=1 : stmn+=10
			if a=0 : stmn+=5
			if stmn>1000 : stmn=1000
			;stmn=1000;��
			
			if (life<=30)&(stmn>500) : stmn=500
			if (nure=1)&(stmn>750) : stmn=750
			if (nure=1)&(life<=30)&(stmn>250) : stmn=250
			if (sumhit=0)&(posses=0)&(muteki=0)&((a=0)|(down=1))&(fatalst=0)|(poison=0) {
				lifeT+
				if (lifeT>100)&(life<70) : life+=1 : lifeT=0
			}
			if press=1 : life=25
			if life>100 : life=100
			if a&1{			;���ړ�
						dir = 0
						if (scl=1)&(cx>=289)&(cx<=292)&(sclp>0) { 
							if cx>=canmovL {
								if (down=0)&(dash=0) : sclp-=2 : sclob=2 : mappos+=2
								if down=1 : sclp-=1 : sclob=1 : mappos+=1
								if dash=1 : sclp-=4 : sclob=4 : stmn-=5 : mappos+=4
							}
							else {
										if down=0 : a=0 : else : a=8
									}
						}
						else {
									if cx>=canmovL {
										if (down=0)&(dash=0) : cx-=2 : leasmov=-2
										if down=1 : cx-=1 : leasmov=-1
										if dash=1 : cx-=4 : stmn-=5 : leasmov=-4
									}
									else {
										if down=0 : a=0 : else : a=8
									}
									sclob=0
									
						}
			}
			
			if a&4 {		;�E�ړ�
						dir = 1
						if (scl=1)&(cx>=289)&(cx<=292)&(sclp<sclM) { 
							if cx<=canmovR {
								if (down=0)&(dash=0) : sclp+=2 : sclob=-2 : mappos-=2
								if down=1 : sclp+=1 : sclob=-1 : mappos-=1
								if dash=1 : sclp+=4 : sclob=-4 : stmn-=5 : mappos-=4
							}
							else {
										if down=0 : a=0 : else : a=8
									}
						}
						else {
									if cx<=canmovR {
										if (down=0)&(dash=0) : cx+=2 : leasmov=2
										if down=1 : cx+=1 : leasmov=1
										if dash=1 : cx+=4 : stmn-=5 : leasmov=4
									}
									else {
										if down=0 : a=0 : else : a=8
									}
									sclob=0
						}
			}
				;--------------���[�X�z��
				if leasgrav=1{
					if leashp<=2{
						if leasgravdir=0 {
							if (scl=1)&(cx>=289)&(cx<=292)&(sclp<400){ 
									sclp+=2 : sclob-=2 : mappos-=2
							}
							else {
							cx+=2 : leasmov+=2		
							}
						}
						if leasgravdir=1 {
							if (scl=1)&(cx>=289)&(cx<=292)&(sclp>0) { 
								sclp-=2 : sclob+=2 : mappos+=2
							}
							else {
							cx-=2 : leasmov-=2		
							}
						}
					}
					else{
						if leasgravdir=0 {
							if (scl=1)&(cx>=289)&(cx<=292)&(sclp<400){ 
								sclp+=1 : sclob-=1 : mappos-=1
							}
							else {
							cx+=1 : leasmov+=1		
							}
						}
						if leasgravdir=1 {
							if (scl=1)&(cx>=289)&(cx<=292)&(sclp>0) { 
								sclp-=1 : sclob+=1 : mappos+=1
							}
							else {
							cx-=1 : leasmov-=1		
							}
						}
					}
				}
			;if a&32 : pos 0,0 : color 0,0,255 : mes cx : mes sclp : mes life : mes leashp : mes leas_mpat : wait 10 : life=100 : stmn=1000;�e�X�g�p
			;--------------------------������
			if relemusiz=1 : recomand2=1
			if relemusiz=0 : recomand2=0
			getkey relemusiz,90
			if (recomand2=0)&(relemusiz=1)&((a=0)|(a=8)) : relemusip+
			if relemusip>=2 : relemusip=0 : gosub *hurihodoki
			return
*hurihodoki
	if poshill>0 {
		kuthill.(poshill-1)=0 : poshill-
	}
	return
*item_select							;�A�C�e���I���̃R���g���[��
			sclob=0
			if a=16 : redcountr=10 : redcountl=10	
			if ((a=20)|(a=28))&(redbox<680) : redcountr+
			if redcountr>10 : redbox+=90 : redcountr=0
			if ((a=17)|(a=25))&(redbox>50) : redcountl+
			if redcountl>10 : redbox-=90 : redcountl=0
					
					return		;���͗�
*enemy
				;�G�l�~�[���^,1=���O��,2=�J���X,3=,�N��,4=���[��,5=�q��,6=�s���j�A,8=�o�u��
				repeat enam
				if (en.cnt=1) {					;�U�R�G�̏���
					if (etype.cnt=1)&(estun.cnt<=0) {			;���O��
						if enx.cnt<=cx : enx.cnt+=1+sclob : endir.cnt=0
						if enx.cnt>cx : enx.cnt-=1-sclob : endir.cnt=1
					}
					if (etype.cnt=1)&(estun.cnt>0) {
						if enx.cnt<=cx : enx.cnt+=sclob :endir.cnt=0
						if enx.cnt>cx : enx.cnt+=sclob :endir.cnt=1
					}
					if (etype.cnt=2)&(estun.cnt<=20){			;�J���X
						if (enx.cnt+250>cx)&(enx.cnt-250<cx)&(down=0) {
							if enx.cnt<=cx :  enx.cnt+=4+sclob : endir.cnt=0
							if enx.cnt>cx :  enx.cnt-=4-sclob : endir.cnt=1
						}
						else {
							if kro.cnt<=150 : enx.cnt+=1+sclob : endir.cnt=0
							if kro.cnt>150 :enx.cnt-=1-sclob : endir.cnt=1
							if kro.cnt>300 : kro.cnt=-1
							kro.cnt+
						}
					}
					if (etype.cnt=2)&(estun.cnt>0) {
						if enx.cnt<=cx : enx.cnt+=sclob : endir.cnt=0
						if enx.cnt>cx : enx.cnt+=sclob :endir.cnt=1
					}
					if (etype.cnt=3)&(estun.cnt<=0) {			;�N��
						if posses=0 {
							if (enx.cnt-325<cx+113)&(enx.cnt+435>cx+83) {
								kumo_keikai.cnt=1 : kumopos.cnt=0
								if enx.cnt<=cx :  enx.cnt+=sclob : edir.cnt=0
								if enx.cnt>cx :  enx.cnt+=sclob : edir.cnt=1
							}
							else {
								kumo_keikai.cnt=0 : kumopos.cnt=0 : kumo_count.cnt=0
								if (kumo.cnt>=0)&(kumo.cnt<200) : enx.cnt+=sclob
								if (kumo.cnt>=200)&(kumo.cnt<450) : enx.cnt+=1+sclob : edir.cnt=0
								if (kumo.cnt>=450)&(kumo.cnt<650) : enx.cnt+=sclob
								if (kumo.cnt>=650)&(kumo.cnt<800) : enx.cnt-=1-sclob : edir.cnt=1
								if kumo.cnt>=800 : kumo.cnt=-1
							kumo.cnt+
							}
						}
						else {
							if (enx.cnt-25<cx+113)&(enx.cnt+135>cx+83){
								kumopos.cnt=1
								if enx.cnt<=cx : edir.cnt=1
								if enx.cnt>cx : edir.cnt=0
							}
							else {
								if enx.cnt<=cx :  enx.cnt+=3+sclob : edir.cnt=1
								if enx.cnt>cx :  enx.cnt-=3-sclob : edir.cnt=0
							}
						}
						
					}
					if (etype.cnt=3)&(estun.cnt>0) {
						enx.cnt+=sclob

					}
					if etype.cnt=4 {			;���[��
						enx.cnt+=sclob
					}
					if (etype.cnt=5)&(estun.cnt<=0) {			;�q��
							if (hillatk.cnt=0)&(enx.cnt+20<=cx+92) : endir.cnt=0
							if (hillatk.cnt=0)&(enx.cnt+20>cx+92) : endir.cnt=1
						
					}
					if (etype.cnt=6)&(estun.cnt<=30) {			;�s���j�A
						if pira_on.cnt=0 {
							eny.cnt=285
							if endir.cnt=0 : enx.cnt-=2-sclob : else : enx.cnt+=2+sclob
							if pira.cnt=120 : endir.cnt=1		
							if pira.cnt=240 : endir.cnt=0 : pira.cnt=-1
							pira.cnt+
						}
					}
					if (etype.cnt=6)&(estun.cnt>30) {
						enx.cnt+=sclob
					}
					if (etype.cnt=7) {;�A���m�E��
						if ev29=1{
							if enx.cnt<=cx : enx.cnt+=1+sclob : endir.cnt=0
							if enx.cnt>cx : enx.cnt-=1-sclob : endir.cnt=1	
						}
					}
					if etype.cnt=8 {;�o�u��
						if dash=1{
							babble_on.cnt=1
							if enx.cnt+53<=cx+93 : enx.cnt+=5+sclob : endir.cnt=1
							if enx.cnt+53>cx+93 : enx.cnt-=5-sclob : endir.cnt=0
						}
						else{
							babble_on.cnt=0
							enx.cnt+=sclob 
						}
						
					}
					if etype.cnt=9 {;�}�E�X
							if (endir.cnt=1)&(enx.cnt>canmovR+sclM+mappos) : endir.cnt=0
							if (endir.cnt=0)&(enx.cnt<canmovL+mappos) : endir.cnt=1
							if endir.cnt=1 : enx.cnt+=2+sclob
							if endir.cnt=0 : enx.cnt+=-2+sclob
					}
					if (etype.cnt=10)&(estun.cnt<=0)&(ehit.cnt=0) {			;�C�k
						if enx.cnt<=cx : enx.cnt+=2+sclob : endir.cnt=0
						if enx.cnt>cx : enx.cnt+=-2+sclob : endir.cnt=1
					}
					if (etype.cnt=10)&((estun.cnt>0)|(ehit.cnt=1))  {
						if enx.cnt<=cx : enx.cnt+=sclob :endir.cnt=0
						if enx.cnt>cx : enx.cnt+=sclob :endir.cnt=1
					}
					if (etype.cnt=11)&(estun.cnt<=0){;�N���Q
					}
					if etype.cnt=12{;�J�U�O���}
							if kaza.cnt<200 : enx.cnt+=2+sclob : endir.cnt=0 : kaza_on.cnt=1
							if (kaza.cnt<350)&(kaza.cnt>=200) : enx.cnt+=sclob : kaza_on.cnt=0
							if (kaza.cnt>=350)&(kaza.cnt<550) : enx.cnt+=-2+sclob : endir.cnt=1 : kaza_on.cnt=1
							if (kaza.cnt<700)&(kaza.cnt>=550) : enx.cnt+=sclob : kaza_on.cnt=0
							if kaza.cnt>=700 : kaza.cnt=-1
							kaza.cnt+
					}
					if (etype.cnt=13)&(estun.cnt<=20)&(mamaatk.cnt=0) {			;�}�}
						if BOSSF=1{
							if enx.cnt<=cx : enx.cnt+=3+sclob : endir.cnt=0
							if enx.cnt>cx : enx.cnt+=-3+sclob : endir.cnt=1
						}
						else{
							if enx.cnt<=cx : enx.cnt+=2+sclob : endir.cnt=0
							if enx.cnt>cx : enx.cnt+=-2+sclob : endir.cnt=1
						}
					}
					if (etype.cnt=13)&((estun.cnt>20)|(mamaatk.cnt=1)) {
						enx.cnt+=sclob
					}
					if (etype.cnt=14)&(estun.cnt<=0) {			;�G���`����
						if (pate15.cnt>=18)&(pate15.cnt<40) {
							if enx.cnt<=cx : enx.cnt+=3+sclob : endir.cnt=0
							if enx.cnt>cx : enx.cnt+=-3+sclob : endir.cnt=1
						}
						else{
							if enx.cnt<=cx : enx.cnt+=sclob :endir.cnt=0
							if enx.cnt>cx : enx.cnt+=sclob :endir.cnt=1
						}
					}
					if (etype.cnt=14)&(estun.cnt>0) {
						if enx.cnt<=cx : enx.cnt+=sclob :endir.cnt=0
						if enx.cnt>cx : enx.cnt+=sclob :endir.cnt=1
					}
					if (posses=0)&(etype.cnt=3) {
						if kumo_keikai.cnt=1 {				;�N���̎�����
							if kumo_count.cnt>=150 {
							if itonam>=5 : itonam=1
							ito.(cnt*itonam)=1
							itox.(cnt*itonam)=enx.cnt
							if edir.cnt=1 : itodir.(cnt*itonam)=1 : else : itodir.(cnt*itonam)=0
							if cnt=enam-1 : itonam+ 
							kumo_count.cnt=-1
							}
							kumo_count.cnt+
						}
					}
					
				}
				loop
					repeat enam*4
						if ito.cnt=1 {				;�N���̎�
							if itodir.cnt=1 : itox.cnt-=8-sclob : else : itox.cnt+=8+sclob
							if (itox.cnt-enx.cnt>=800)|(itox.cnt-enx.cnt<=-800) : ito.cnt=0
						}
					loop

				if ((sitaatack_on=1)|(bossatackA=1))&(BOSSA=1) {					;�����B�A�^��
					envplax+=sclob
				}
				
				
				repeat enam
					estun.cnt-
				loop

															;--------------------�g���b�v�n��
				repeat enam
				if trap.cnt=1 : trapx.cnt+=sclob
				loop
															;--------------����w�
				;if (map=53)&(kumo53mode=0) {
					;kumo53count=0
					;kumo53A=120+rnd(380)
					;kumo53B=120+rnd(380)
					;kumo53C=120+rnd(380)
					;kumo53mode=1
				;}
															;--------------------�{�X�L�����̏���
				if BOSSA=1 {				;�{�X�P�@�����B�A�^��
					if sclp>500 : ueatack=rnd(3)
					if sclp<=500 : ueatack=rnd(2)
					if (envykeikai=1)&(down=0) : envykeikai=0
					if sclp>=500 : bossmotion=70
					if sclp<500 : bossmotion=60
					if sclp<=200 : bossmotion=50
					if (ueatack=0)&(ueatack_on=0)&(sitaatack_on=0)&(bossatackA=0)&(envykeikai=0) : ueatack_on=1
					if ueatack_on=1 : uemotion+
					if (uemotion>bossmotion)&(down=0)&(muteki=0) : dead=5 : goto *event_dead
					if (uemotion>bossmotion)&(down=1) : uekaraburi=1 : uemotion=0 : ueatack_on=0 : ehead=-540
					if (ueatack_on=0)&(sitaatack_on=0)&(bossatackA=0) {
						sitaatack_on=1 : derubasho=rnd(5)
						if down=0 {
							if derubasho=0 : envplax=cx+40
							if derubasho=1 : envplax=cx
							if derubasho=2 : envplax=cx-50
							if derubasho=3 : envplax=cx-80
							if derubasho=4 : envplax=cx+20
						}
						else {
							if derubasho=0 : envplax=cx+57
							if derubasho=1 : envplax=cx
							if derubasho=2 : envplax=cx+25
							if derubasho=3 : envplax=cx+40
							if derubasho=4 : envplax=cx+10
						}
					}
					if sitaatack_on=1 : sitamotion+
					if sitamotion>bossmotion : bossatackA=1 : sitamotion=0 : sitaatack_on=0 : envyhantei=1
				}
				if (BOSSB=1)&(ready<0) {		;�{�X�Q�@�T�^��
					
					if satTime=2000 : sat_A=0 : sat_B=0 : sat_C=0 : sat_D=0 : sat_E=0 : ready=100 : Bpate2=0
					if satTime<=0 : tosenbo=0
					if (satTime<=0)&(life>0)&(satbigray=0)&(cx>290) : sat_A=0 : sat_B=0 : sat_C=0 : sat_D=0 : sat_E=0 : satbigray=1 : canmovR=800 : stun=0 : cauntdown=0 :  canmovL=200 : wrapos=0 : stun=0 : BosshitB=0 : wrahantei=0 : Bfe2x=1000 : Bpate2=0
					if (satTime<=2000)&(satTime>0) {
						satatack=rnd(100)
						if ((satatack>=0)&(satatack<40))&(sat_A=0)&(sat_B=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_A=1 : wraapi=1 : Bpate2=0
						if ((satatack>=50)&(satatack<65))&(sat_A=0)&(sat_B=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_B=1 : wraapi=1 : Bpate2=0
						if ((satatack>=65)&(satatack<70))&(sat_B=0)&(sat_A=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_C=1 : wraapi=1 : Bpate2=0
						if ((satatack>=70)&(satatack<100))&(sat_B=0)&(sat_A=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_D=1 : wraapi=2 : Bpate2=0
						if ((satatack>=40)&(satatack<50))&(sat_A=0)&(sat_B=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_E=1 : wraapi=1 : Bpate2=0
					}
					if satTime>2000 {
						satatack=rnd(100)
						if ((satatack>=0)&(satatack<50))&(sat_A=0)&(sat_B=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_A=1 : wraapi=1 : Bpate2=0
						if ((satatack>=50)&(satatack<70))&(sat_A=0)&(sat_B=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_E=1 : wraapi=1 : Bpate2=0
						if ((satatack>=70)&(satatack<90))&(sat_A=0)&(sat_B=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_B=1 : wraapi=1 : Bpate2=0
						if ((satatack>=90)&(satatack<100))&(sat_B=0)&(sat_A=0)&(sat_C=0)&(sat_D=0)&(sat_E=0) : sat_C=1 : wraapi=1 : Bpate2=0
					}
					if wraapi=1 {
						repeat
						wraderu=rnd(4)
						if wraderu=0 : wraplax=cx+55
						if wraderu=1 : wraplax=cx+30
						if wraderu=2 : wraplax=cx-50
						if wraderu=3 : wraplax=cx-30
						if (wraplax>115)&(wraplax<590) : break
						loop
						wraapi=0
						if wraplax<cx : wradir=1
						if wraplax>cx : wradir=0
					}
					if wraapi=2 {
						if cx<290 : wraplax=550 : wradir=0
						if cx>=290 : wraplax=100 : wradir=1
						wraapi=0
					}
						
				}
				if BOSSC=1 {			;�{�X�R�@�}����
					if gredirx=0{
						if grex+30<=70 : gredirx=1
					}
					else {
						if grex+170>=760 : gredirx=0
					}
					if grediry=0 {
						if grey+30<=0 : grediry=1
					}
					else {
						if grey+170>=456 : grediry=0
					}
					if mamotime>3100 {
						kemuri=1,0,0
						if gredirx=0 : grex-=2 : else : grex+=2
						if grediry=0 : grey-=2 : else : grey+=2
					}
					if (mamotime<=3100)&(mamotime>1100){
						kemuri=1,1,0
						if gredirx=0 : grex-=3 : else : grex+=3
						if grediry=0 : grey-=3 : else : grey+=3
					}
					if (mamotime<=1100)&(mamotime>0){
						kemuri=1,1,1
						if gredirx=0 : grex-=2 : else : grex+=3
						if grediry=0 : grey-=5 : else : grey+=4
					}
					repeat kemu
					if (kemuri.cnt=1)&(kemuri_on.cnt=0)&(kemushot.cnt>=200) {
						kemushot.cnt=-1 : kemuri_on.cnt=1 : kemurix.cnt=grex : kemuriy.cnt=grey
						kemuridirx.cnt=rnd(2) : kemuridiry.cnt=rnd(2)
						kemustun.cnt=100
					}
					
						if kemuridirx.cnt=0{
							if kemurix.cnt+30<=70 : kemuridirx.cnt=1
						}
						else {
							if kemurix.cnt+170>=760 : kemuridirx.cnt=0
						}
						if kemuridiry.cnt=0 {
							if kemuriy.cnt+30<=0 : kemuridiry.cnt=1
						}
						else {
							if kemuriy.cnt+170>=456 : kemuridiry.cnt=0
						}
					if (kemuri.cnt=1)&(kemuri_on.cnt=0) : kemushot.cnt+
					if kemuri_on.cnt=1 {
						if kemustun.cnt<=0 {
							if kemuridirx.cnt=0 : kemurix.cnt-=1 : else :kemurix.cnt+=1
							if kemuridiry.cnt=0 : kemuriy.cnt-=1 : else : kemuriy.cnt+=1
						}
					}
					kemustun.cnt-
					loop
					mamotime-
				}
				if BOSSD=1 {				;�{�X�S�@�x���t�F�S�[��
										;-------------------�{�X�{�̂̍s��
					if (sammonT>=sammonC)&(life>0)&(posdead=0) {;--------����
						beruflash=5
						itonam2=1
						posses=0
						hitmog=0
						hitkro=0
						repeat enam*4
							 kumoito.cnt=0
							 ito.cnt=0
						loop
						repeat enam
						if berumode=0 : en.cnt=0 : ehit.cnt=0 : estun.cnt=100
						hitpira.cnt=0
						warmstun.cnt=0
						warm_on.cnt=1
						kumopos.cnt=0
						loop
						if berumode=1 {
							repeat enam-30
							en.(cnt+30)=0 : ehit.(cnt+30)=0 : estun.(cnt+30)=100
							loop
						}
						if berumode=0 : sammontype=rnd(8)
						if berumode=1 : sammontype=8+rnd(8)
						if sammontype=0 : figure=3 : etype=1,1,1
						if sammontype=1 : figure=2 : etype=6,1
						if sammontype=2 : figure=3 : etype=1,1,3
						if sammontype=3 : figure=3 : etype=1,4,3
						if sammontype=4 : figure=3 : etype=3,1,1
						if sammontype=5 : figure=4 : etype=4,4,4,4
						if sammontype=6 : figure=4 : etype=4,1,1,1
						if sammontype=7 : figure=3 : etype=1,3,4
						if sammontype=8 : figure=5 : etype.30=4 : etype.31=4 : etype.32=4 : etype.33=4 : etype.34=4
						if sammontype=9 : figure=4 : etype.30=1 : etype.31=1 : etype.32=1 : etype.33=1 : etype.34=0
						if sammontype=10 : figure=4 : etype.30=4 : etype.31=1 : etype.32=3 : etype.33=4 : etype.34=0
						if sammontype=11 : figure=5 : etype.30=4 : etype.31=1 : etype.32=6 : etype.33=1 : etype.34=0
						if sammontype=12 : figure=3 : etype.30=1 : etype.31=6 : etype.32=1 : etype.33=0 : etype.34=0
						if sammontype=13 {
							repeat
							figure=3 : etype.30=1+rnd(6) : etype.31=1+rnd(6) : etype.32=1+rnd(6) : etype.33=0 : etype.34=0
							if etype.30=2 : continue
							if etype.31=2 : continue
							if etype.32=2 : continue
							break
							loop
						}
						if sammontype=14 : figure=4 : etype.30=1 : etype.31=6 : etype.32=4 : etype.33=1 : etype.34=0
						if sammontype=15 : figure=5 : etype.30=1 : etype.31=3 : etype.32=4 : etype.33=5 : etype.34=6
						if berumode=0 {
							repeat figure
							enx.cnt=600+rnd(400)+mappos
							en.cnt=1
							estan.cnt=100
							warmstun.cnt=100
							pirastun.cnt=100
							loop
						}
						if berumode=1 {
							repeat figure
							enx.(cnt+30)=600+rnd(600)+mappos
							en.(cnt+30)=1
							estan.(cnt+30)=150
							warmstun.(cnt+30)=100
							pirastun.(cnt+30)=100
							loop
						}
						muteki=1
						stun=0 : stunoff=0 : hitkro=0
						sammonT=0 : sammonC=1000+rnd(500)
					}
					if berumode=1 {;�q�����o
						if beruhirup>=50 {
							beruhiru=rnd(30)
							if en.beruhiru=0 : en.beruhiru=1 : enx.beruhiru=200+mappos : etype.beruhiru=5
							beruhirup=-1
						}
						beruhirup+
					}
					if sclp=0 {;�ʏ�U��
						if (berumode=0)&(ready<=0) : beruatk=1
					}
					if sclp<30 {;�ʏ�U��
						if (berumode=1)&(ready<=0)&(life>0) : beruatk=2
					}
					if sclp>0 {				;�K�X���o
						if berumode=0 {
							if berustun<=0 {
								berugass=rnd(2)
								if (berugass=0)&(bkemu2_on.bgass2nam=0) : bkemu2_on.bgass2nam=1 : bktype.bgass2nam=0 : bkemu2x.bgass2nam=160+mappos : bkemu2y.bgass2nam=180-rnd(100) : bgassstun.bgass2nam=100 : bgass2nam+
								if (berugass=1)&(bkemu2_on.bgass2nam=0) : bkemu2_on.bgass2nam=1 : bktype.bgass2nam=1 : bkemu2x.bgass2nam=160+mappos : bkemu2y.bgass2nam=180-rnd(100) : bgassstun.bgass2nam=100 : bgass2nam+
								if bgass2nam>15 : bgass2nam=0
								berustun=450+rnd(300)
							}
						}
						if berumode=1 {
							if berustun<=0 {
								berugass=rnd(3)
								if (berugass=0)&(bkemu2_on.bgass2nam=0) : bkemu2_on.bgass2nam=1 : bktype.bgass2nam=0 : bkemu2x.bgass2nam=160+mappos : bkemu2y.bgass2nam=180-rnd(100) : bgassstun.bgass2nam=100 : bgass2nam+
								if (berugass=1)&(bkemu2_on.bgass2nam=0) : bkemu2_on.bgass2nam=1 : bktype.bgass2nam=1 : bkemu2x.bgass2nam=160+mappos : bkemu2y.bgass2nam=180-rnd(100) : bgassstun.bgass2nam=100 : bgass2nam+
								if (berugass=2)&(bkemu2_on.bgass2nam=0) : bkemu2_on.bgass2nam=1 : bktype.bgass2nam=2 : bkemu2x.bgass2nam=160+mappos : bkemu2y.bgass2nam=280-rnd(200) : bgassstun.bgass2nam=100 : bgass2nam+
								if bgass2nam>15 : bgass2nam=0
								berustun=450+rnd(200)
								
							}
						}
					}
					repeat 2
					bkemu1x.cnt+=3+sclob		;�n�𔇂���
					if bkemu1x.cnt>1250+mappos : bkemu1x.cnt=-1200+mappos
					loop
					if berumode=1 {
						repeat 1		;���̕�
							bkemu3x.cnt+=1+sclob
							if bkemu3x.cnt>1250+mappos : bkemu3x.cnt=-630+mappos-rnd(800)
						loop
					}
					repeat bkemu
					if bkemu2_on.cnt=1{			;�f����
						if (bktype.cnt=0)&(bgassstun.cnt<=0) {			;�X���E�̃P����
							bkemu2x.cnt+=1+sclob
							if (bkemu2p.cnt>=0)&(bkemu2p.cnt<20) : bkemu2y.cnt+=3
							if (bkemu2p.cnt>=20)&(bkemu2p.cnt<40) : bkemu2y.cnt+=2
							if (bkemu2p.cnt>=40)&(bkemu2p.cnt<60) : bkemu2y.cnt+=1
							if (bkemu2p.cnt>=60)&(bkemu2p.cnt<80) : bkemu2y.cnt+=0
							if (bkemu2p.cnt>=80)&(bkemu2p.cnt<100) : bkemu2y.cnt-=1
							if (bkemu2p.cnt>=100)&(bkemu2p.cnt<120) : bkemu2y.cnt-=2
							if (bkemu2p.cnt>=120)&(bkemu2p.cnt<140) : bkemu2y.cnt-=3
							if (bkemu2p.cnt>=140)&(bkemu2p.cnt<160) : bkemu2y.cnt-=2
							if (bkemu2p.cnt>=160)&(bkemu2p.cnt<180) : bkemu2y.cnt-=1
							if (bkemu2p.cnt>=180)&(bkemu2p.cnt<200) : bkemu2y.cnt-=0
							if (bkemu2p.cnt>=200)&(bkemu2p.cnt<220) : bkemu2y.cnt+=1
							if (bkemu2p.cnt>=220)&(bkemu2p.cnt<240) : bkemu2y.cnt+=2
							if (bkemu2p.cnt>=240)&(bkemu2p.cnt<260) : bkemu2y.cnt+=3 : bkemu2p.cnt=-1
							bkemu2p.cnt+
							
						}
						if (bktype.cnt=0)&(bgassstun.cnt>0) : bkemu2x.cnt+=sclob
						if (bktype.cnt=1)&(bgassstun.cnt<=0) {			;�}�q�̃P����
							bkemu2x.cnt+=1+sclob
							if bkemu2ydir.cnt=0 : bkemu2y.cnt+=2
							if bkemu2ydir.cnt=1 : bkemu2y.cnt-=2
							if bkemu2y.cnt+30<=0  : bkemu2ydir.cnt=0
							if bkemu2y.cnt+170>=456 : bkemu2ydir.cnt=1
						}
						if (bktype.cnt=1)&(bgassstun.cnt>0) : bkemu2x.cnt+=sclob
						if (bktype.cnt=2)&(bgassstun.cnt<=0) {			;�ғł̃P����
							bkemu2x.cnt+=4+sclob
						}
						if (bktype.cnt=2)&(bgassstun.cnt>0) : bkemu2x.cnt+=sclob
						if bkemu2x.cnt>1250+mappos : bkemu2_on.cnt=0 
					}
					bgassstun.cnt-
					loop
					
					
				}
				if BOSSE=1 {;�{�X�@�A�X���f�E�X
					;---------------�{�C���[�h
					if lustlimit=1{
						if (lustT>0)&(lustT<=3500){
							if lustball1=0 {
								pointcx=cx+43.0
								Eball1x=120.0 : Eball1y=10.0
								Eball1r=atan(210.0,pointcx-120.0)
								Eball1p=1.0
								lustball1=1
							}
							if lustball2=0 {
								pointcx=cx+43.0
								Eball2x=580.0 : Eball2y=10.0
								Eball2r=atan(210.0,pointcx-580.0)
								Eball2p=1.0
								lustball2=1
							}
						}
						if (lustT>0)&(lustT<=2500){
							if lustball3=0 {
								lustball3=1
							if lustball3d=1 : lustball3d=0 : else : lustball3d=1
							}
						}
						if (lustT>0)&(lustT<=1500)&(lustball4=0){
							lustball4=1 : lustball5=1
							Eball4dx=1 : Eball4dy=1 : Eball5dx=0 : Eball5dy=1
							Eball4x=120 : Eball5x=580 : Eball4y=10 : Eball5y=10
						}
						;---------------�{�C�A�X���f�E�X�ʏ�e
						if lustT=1000 {
							lustatk=0
							if cx>300 : Eballd=-1 : else : Eballd=1
						}
						if lustT=2000 {
							lustatk=0
							if cx>300 : Eballd=-1 : else : Eballd=1
						}
						if lustT<501{
						if lustatk=0 : Eballx=350 : Ebally=0
						if (lustatk>0)&(lustatk<40) : Eballx+=15*Eballd  : Ebally+=10
						if lustatk=40 : Eballx=350 : Ebally=0
						if (lustatk>40)&(lustatk<80) : Eballx+=10*Eballd : Ebally+=13
						if lustatk=80 : Eballx=350 : Ebally=0 
						if (lustatk>80)&(lustatk<120) : Eballx+=5*Eballd : Ebally+=16
						if lustatk=120 : Eballx=350 : Ebally=0 
						if (lustatk>120)&(lustatk<160) : Eballx+=0 : Ebally+=19
						if lustatk=160 : Eballx=350 : Ebally=0 
						if (lustatk>160)&(lustatk<200) : Eballx+=-5*Eballd : Ebally+=16
						if lustatk=200 : Eballx=350 : Ebally=0 
						if (lustatk>200)&(lustatk<240) : Eballx+=-10*Eballd : Ebally+=13
						if lustatk>=240 : Eballd*=-1 : lustatk=-1
						}
						if (lustT<2001)&(lustT>=501){
							if lustatk=0 : Eballx=350 : Ebally=0
							if (lustatk>0)&(lustatk<50) : Eballx+=15*Eballd  : Ebally+=10
							if lustatk=50 : Eballx=350 : Ebally=0
							if (lustatk>50)&(lustatk<100) : Eballx+=10*Eballd : Ebally+=13
							if lustatk=100 : Eballx=350 : Ebally=0 
							if (lustatk>100)&(lustatk<150) : Eballx+=5*Eballd : Ebally+=16
							if lustatk=150 : Eballx=350 : Ebally=0 
							if (lustatk>150)&(lustatk<200) : Eballx+=0 : Ebally+=19
							if lustatk=200 : Eballx=350 : Ebally=0 
							if (lustatk>200)&(lustatk<250) : Eballx+=-5*Eballd : Ebally+=16
							if lustatk=250 : Eballx=350 : Ebally=0 
							if (lustatk>250)&(lustatk<300) : Eballx+=-10*Eballd : Ebally+=13
							if lustatk>=300 : Eballd*=-1 : lustatk=-1
						}
						if lustT>=2001{
							if lustatk=0 : Eballx=350 : Ebally=0
							if (lustatk>0)&(lustatk<60) : Eballx+=15*Eballd  : Ebally+=10
							if lustatk=60 : Eballx=350 : Ebally=0
							if (lustatk>60)&(lustatk<120) : Eballx+=10*Eballd : Ebally+=13
							if lustatk=120 : Eballx=350 : Ebally=0 
							if (lustatk>120)&(lustatk<180) : Eballx+=5*Eballd : Ebally+=16
							if lustatk=180 : Eballx=350 : Ebally=0 
							if (lustatk>180)&(lustatk<240) : Eballx+=0 : Ebally+=19
							if lustatk=240 : Eballx=350 : Ebally=0 
							if (lustatk>240)&(lustatk<300) : Eballx+=-5*Eballd : Ebally+=16
							if lustatk=300 : Eballx=350 : Ebally=0 
							if (lustatk>300)&(lustatk<360) : Eballx+=-10*Eballd : Ebally+=13
							if lustatk>=360 : Eballd*=-1 : lustatk=-1
						}
						lustatk+
						
					}
					else{
						;-------------�o��
						Eballd=1
						lustball4=0 : lustball5=0
					if (lustturn>=1)&(lustmode=0) : onamode=rnd(10)-lustturn
					if (onamode<=-1)&(lustmode=0)&(life>0) {
						lustmode=2 : onaru=1 : stun=1 : lustturn=0 : onamode=0
						keytime=0
						onakaihoup=20+rnd(30)
						keyrnd=rnd(4)
						if keyrnd=0 : keydir=1 : yajirux=cx-60 : yajiruy=cy+56
						if keyrnd=1 : keydir=4 : yajirux=cx+165 : yajiruy=cy+56
						if keyrnd=2 : keydir=2 : yajirux=cx+53 : yajiruy=cy-80
						if onaring=0{
							if keyrnd=3 : keydir=8 : yajirux=cx+53 : yajiruy=cy+160
						}
						else{
							if keyrnd=3 : keydir=8 : yajirux=cx+53 : yajiruy=cy+200
						}
					}
					if (onaru=0)&(lustmode=0)&(life>0){
						lustact=rnd(10)
						if lustact=0 : lustmode=1 : lustderu=1 : lustdir=0 : lustx=570 : derua=500
						if lustact=1 : lustmode=1 : lustderu=2 : lustdir=1 : lustx=0 : derua=500
					}
					;-------------�U��
					if lust_on=1 {
						if lustatk=30 {
							acid1=1 : acidy=210
							if lustdir=0 : acidx=550 : else : acidx=270
						}
						if lustatk=110 {
							acid2=1 : acidy=210
							if lustdir=0 : acidx=550 : else : acidx=270
						}
						if lustatk=170 {
							acid3=1 : acidy=210
							if lustdir=0 : acidx=550 : else : acidx=270
						}
						if lustatk=210 : lustbrits=1
						if lustatk=238 : lustbrits=0 : lustatk=0 : lust_on=0 : lust_kie=1 : kier=100 : lustturn+
						lustatk+
					}
					}
					if lustbrits=1 {
						if hitacid=0{
							if lustdir=0 : lustx-=15
							if lustdir=1 : lustx+=15
						}
						else{
							if lustdir=0 : lustx-=20
							if lustdir=1 : lustx+=20
						}
					}
					if acid1=1 {
						if lustdir=0 : acidir=-1 : else : acidir=1
							if (acidatk>=0)&(acidatk<10) : acidx+=10*acidir
							if (acidatk>=10)&(acidatk<20) : acidx+=10*acidir : acidy+=2
							if (acidatk>=20)&(acidatk<30) : acidx+=10*acidir : acidy+=5
							if acidatk>=30 : acidx+=10*acidir : acidy+=10
							if acidy+40>=470 : acid1=0 : acidatk=-1
						acidatk+
					}
					if acid2=1 {
						if lustdir=0 : acidir=-1 : else : acidir=1
							if (acidatk>=0)&(acidatk<6) : acidx+=10*acidir
							if (acidatk>=6)&(acidatk<12) : acidx+=10*acidir : acidy+=3
							if (acidatk>=12)&(acidatk<18) : acidx+=10*acidir : acidy+=8
							if acidatk>=18 : acidx+=10*acidir : acidy+=14
							if acidy+40>=470 : acid2=0 : acidatk=-1
						acidatk+
					}
					if acid3=1 {
						if lustdir=0 : acidir=-1 : else : acidir=1
							if acidatk>=0 : acidx+=10*acidir : acidy+=13
							if acidy+40>=470 : acid3=0 : acidatk=-1
						acidatk+
					}
					if lustball3=1 {;��]�{�[��
						Eball3y=300
						if lustball3d=1 : Eball3x+=4 : else : Eball3x-=4
						if (Eball3x<=-600)||(Eball3x>=1100) : lustball3=0 
					}
					if lustball1=1{;���@�_���`
						if (Eball1x<-200)||(Eball1x>900)||(Eball1y>800) : lustball1=0
						Eball1x=Eball1p*cos(Eball1r)+120.0 : Eball1y=Eball1p*sin(Eball1r)+10.0
						Eball1p+=5.0
					}
					if lustball2=1{;���@�_���a
						if (Eball2x<-200)||(Eball2x>900)||(Eball2y>800) : lustball2=0
						Eball2x=Eball2p*cos(Eball2r)+580.0 : Eball2y=Eball2p*sin(Eball2r)+10.0
						Eball2p+=5.0
					}
					if lustball4=1{;���˒e�`
						if (Eball4dx=0)&(Eball4x<=0) : Eball4dx=1
						if (Eball4dx=1)&(Eball4x>=700) : Eball4dx=0
						if (Eball4dy=0)&(Eball4y<=0) : Eball4dy=1
						if (Eball4dy=1)&(Eball4y>=500) : Eball4dy=0
						if Eball4dx=0 : Eball4x-=2 : else : Eball4x+=2
						if Eball4dy=0 : Eball4y-=2 : else : Eball4y+=2
					}
					if lustball5=1{;���˒e�a
						if (Eball5dx=0)&(Eball5x<=0) : Eball5dx=1
						if (Eball5dx=1)&(Eball5x>=700) : Eball5dx=0
						if (Eball5dy=0)&(Eball5y<=0) : Eball5dy=1
						if (Eball5dy=1)&(Eball5y>=500) : Eball5dy=0
						if Eball5dx=0 : Eball5x-=2 : else : Eball5x+=2
						if Eball5dy=0 : Eball5y-=2 : else : Eball5y+=2
					}
				}
				if (lustlast=1)&(map=69){;�A�X���f�E�X�Ō����
						if (lustlastx<-200)||(lustlastx>800)||(lustlasty>600) : lustlast=0
						lustlastx=lustlastp*cos(lustlastr)+300.0 : lustlasty=lustlastp*sin(lustlastr)+0.0
						lustlastp+=1.0
				}
				if BOSSF=1{;�x���[�o�u
					repeat 5
						;-----------�V�䂩��
					if sizuku.cnt=0{
						if sizukup.cnt>=100{
							sizuku_on.cnt=1
							sizukux.cnt=-200+rnd(1200)
							sizukuy.cnt=0.0
							sizukuy.cnt=-180.0
							sizuku.cnt=1
							sizukufall.cnt=0.0
							sizukufall.cnt=0.1
							sizukup.cnt=-1
						}
						sizukup.cnt+
					}
					if sizuku_on.cnt=1{
						sizukuy.cnt+=sizukufall.cnt*sizukufall.cnt
						if sizukufall.cnt<7 : sizukufall.cnt+=0.03
						sizukux.cnt+=sclob
						if sizukuy.cnt>=420 : sizuku_on.cnt=0 : sizuku.cnt=0 : sizukup.cnt+=rnd(80)
					}
					loop
					repeat enam
					if floa.cnt=1{
						if floadir.cnt=0{
							while floadir.cnt=0
							floadir.cnt=-1+rnd(3)
							wend
						}
						if (floap.cnt>=100)|((floax.cnt>canmovR+sclM+mappos)&(floadir.cnt=1))|((floax.cnt<canmovL+mappos)&(floadir.cnt=-1)) : floadir.cnt*=-1 : floap.cnt=-600+rnd(400)
						if floadir.cnt=1 : floax.cnt+=1+sclob
						if floadir.cnt=-1 : floax.cnt+=-1+sclob
						floap.cnt+
					}
					;----------�X���C��
					if slaim.cnt=1{
						if slaimx.cnt+59<=cx+93-50+rnd(100) : slaimx.cnt+=1+sclob
						if slaimx.cnt+59>cx+93-50+rnd(100) : slaimx.cnt-=1-sclob
					}
					loop
				}
				if BOSSB=1 : ready- : satTime-
				if BOSSD=1 : berustun- : sammonT+ : ready-
				if BOSSE=1 : lustT-

				;------------------------------���V�t�F���̍s��
				if rusi_on=1 {	
					if alert=0 {
						if (((rusix+615>cx+83)&(rusix+315<cx+113)&(rusidir=1))|((rusix-385<cx+113)&(rusix-85>cx+83)&(rusidir=0))|((rusix+315>cx+113)&(rusix+115<cx+113)&(rusidir=1)&(down=0))|((rusix-85<cx+83)&(rusix+115>cx+83)&(rusidir=0)&(down=0)))&(rusimode!=4)&(rusidown=0)&((hiding=0)&(rusimiss=0)) : alertpt+ : else : alertpt=0
						if ((rusix-185<cx+113)&(rusix+415>cx+83)&(dash=1))&(rusimode!=4){
							rusimode=0
							if rusix+115<cx+98 : rusidir=1
							if rusix+115>cx+98 : rusidir=0
						}
						if ((rusix-185<cx+113)&(rusix+415>cx+83)&(dash=1))&(rusimode!=4){
							rusimode=0
							if rusix+115<cx+98 : rusidir=1
							if rusix+115>cx+98 : rusidir=0
						}
						if rusimode=0 : rusipat=0 : rusifpat=0
						if (rusimode=0)|(rusimode=1)|(rusimode=4) : rusix+=sclob
						if rusimode=1 {
							if rusipat=400 : rusidir=1
							if rusipat>=800 : rusidir=0 : rusipat=-1
							rusipat+
						}
						if rusimode=2 {
							if (rusifpat>=40)&(rusifpat<=90) {
								rusix+=2+sclob  : rusidir=1
							}
							else {
								rusix+=sclob : rusidir=1
							}
						}
						if rusimode=3 {
							if (rusifpat>=40)&(rusifpat<=90) {
								rusix-=2-sclob  : rusidir=0
							}
							else {
								rusix+=sclob : rusidir=0
							}
						}
						if alertpt>20 {
							alert=1 : alertpt=0 : alertoff=-1
							if (map=116)|(map=115)|(map=114)|(map=113) : chase2=1
						}
					}
					if alert=1 {
						if (rusifpat>=40)&(rusifpat<=70) {
							if rusix+115<cx+98 : rusix+=9+sclob : rusidir=1
							if rusix+115>cx+98 : rusix-=9-sclob : rusidir=0
						}
						else {
							rusix+=sclob
							if rusix+115<cx+98 :  rusidir=1
							if rusix+115>cx+98 : rusidir=0
						}
					}
				}
				;----------------------���V�t�F���̒��g
				if BOSSG=1{
					if rusi_tpat=0 : rusitrx+=sclob;�Î~
					if rusi_tpat=1 {;�ǔ��ːi
						if (rusitrx+115<cx+98)&(rusi_tp1>=200) :  rusi_tdir=1 : rusi_tp1=-50+rnd(200)
						if (rusitrx+115>cx+98)&(rusi_tp1>=200) : rusi_tdir=0 : rusi_tp1=-50+rnd(200)
						if (rusi_tdir=1)&(rusitrx>1500+mappos) : rusi_tdir=0 : rusi_tp1=-100+rnd(200)
						if (rusi_tdir=0)&(rusitrx<100+mappos) : rusi_tdir=1 : rusi_tp1=-100+rnd(200)
						if rusi_tdir=1 {
							rusitrx+=5+sclob
							if rusihp<=30 : rusitrx+
							if rusihp<=10 : rusitrx+
						}
						if rusi_tdir=0 {
							rusitrx-=5-sclob
							if rusihp<=30 : rusitrx-
							if rusihp<=10 : rusitrx-
						}
						rusi_tp1+
						if rusihp<=30 : rusi_tp1+
						if rusihp<=10 : rusi_tp1+
						rusi_tp2+
					}
					if rusi_tpat=2 {;�ːi�ޔ�
						if rusi_tdir=1 {
							rusitrx+=9+sclob
							if rusihp<=30 : rusitrx+
							if rusihp<=10 : rusitrx+
						}
						if rusi_tdir=0 {
							rusitrx-=9-sclob
							if rusihp<=30 : rusitrx-
							if rusihp<=10 : rusitrx-
						}
					}
					if rusi_tpat=3 {;�W�����v�U��
						if rusi_tdir=1 : rusitrx+=9+sclob
						if rusi_tdir=0 : rusitrx-=9-sclob
					}
					if rusi_tpat=4 : rusitrx+=sclob;�c�ガ
					if rusi_tpat=5 : rusitrx+=sclob;���ガ
					if rusi_tpat=6 : enmuteki=1 : enmutekiT=0 : rusitrx+=sclob;�ォ��G��
					if rusi_tpat=7 : enmuteki=1 : enmutekiT=0 : rusitrx+=sclob;����

					;---------------�s���̌���
					
					if rusi_tpat=0{
						if rusi_tjump=1{
							if rusi_tp3>=40 : rusi_tp3=-1 : rusi_tpat=3
							rusi_tp3+
						}
					}
					if rusi_tpat=1{
						if (rusitrx<=700)&(rusitrx>=-200) : rusi_tmita=1
						if rusi_tp2>=1000 : rusi_tpat=2 : rusi_tp2=-500+rnd(800) : rusi_tmita=0
						if (rusi_tmita=1)&(rusitrx>=900)|(rusitrx<=-400) : rusi_tpat=2 : rusitrx=10000 : rusi_tp2=-500+rnd(800) : rusi_tmita=0
						if rusi_tp6>=500 {
							rusi_tjump=1
							rusi_tp6=-200+rnd(600)
						}
						rusi_tp6+
						if rusi_tzone=1{
							if (rusi_tp5>=400)&(rusi_tjump=0) {
							rusi_tatkrnd=rnd(2)
							if rusi_tatkrnd=0 : rusi_tatk_v=1
							if rusi_tatkrnd=1 : rusi_tatk_h=1
							rusi_tp5=-300+rnd(700)
							}
						}
						rusi_tp5+
						if rusihp<=40 : rusi_tp5+
						if rusihp<=10 : rusi_tp5+=2
						if rusi_tjump=1{
							rusi_tpat=0
							if rusitrx+115<cx+98 :  rusi_tdir=1
							if rusitrx+115>cx+98 : rusi_tdir=0
						}
						if rusi_tatk_v=1 {
							rusi_tpat=4 : muteki=0 : mutekiT=0
							if rusitrx+115<cx+98 :  rusi_tdir=1
							if rusitrx+115>cx+98 : rusi_tdir=0
						}
						if rusi_tatk_h=1 {
							rusi_tpat=5 : muteki=0 : mutekiT=0
							if rusitrx+115<cx+98 :  rusi_tdir=1
							if rusitrx+115>cx+98 : rusi_tdir=0
						}
					}
					if rusi_tpat=2{
						if (rusitrx<=-350)|(rusitrx>=850) {
							if rusi_tp4>=50 {
								rusi_tp4=rnd(50) 
								rusi_tr_rnd=rnd(3)
								if rusi_tr_rnd=0 {
									rusi_thoukou=rnd(2)
									if rusi_thoukou=0 : rusitrx=-350
									if rusi_thoukou=1 : rusitrx=850
									rusi_tpat=1
									if rusitrx+115<cx+98 :  rusidir=1
									if rusitrx+115>cx+98 : rusidir=0
									rusi_tp1=-200
								}
								if rusi_tr_rnd=1 {
									if rusihp<=20 : rusitrx=cx+93-50-200+rnd(200) : else : rusitrx=cx+93-50-100+rnd(100)
									rusi_tpat=6
									rusi_tr_rnd2=rnd(2)
									if rusi_tr_rnd2=0 : rusi_ueatk_on=1
									if rusi_tr_rnd2=1 : rusi_sitaatk_on=1
								}
								if rusi_tr_rnd=2 {
									rusitrx=cx+93-50-100+rnd(100)
									rusi_tpat=7
									rusifally=-500
									rusifall=5
									rusirakka=1
								}
							}
							rusi_tp4+
						}
					}
					if rusi_tpat=3{
						if rusi_tjumpoff=1 : rusi_tjump=0 : rusi_tjumpoff=0 : rusi_tpat=1
					}
					if (rusi_tpat=4)|(rusi_tpat=5){
						if rusi_tatkoff=1 : rusi_tatk_v=0 : rusi_tatk_h=0 : rusi_tatkoff=0 : rusi_tpat=1
					}
					if (rusi_tpat=6){
						if (rusi_tsyoku>=3)&(rusihp>30) {
							rusi_tsyoku=0
							rusitrx=10000+mappos
							rusi_tpat=2
						}
						if (rusi_tsyoku>=6)&(rusihp<=30) {
							rusi_tsyoku=0
							rusitrx=10000+mappos
							rusi_tpat=2
						}
					}
					if (rusi_tpat=7){
						if rusi_ttyaku=1{
							rusi_ttyaku=0
							enmuteki=0 : enmutekiT=0
							if rusitrx+115<cx+98 :  rusi_tdir=1
							if rusitrx+115>cx+98 : rusi_tdir=0
							if rusi_tr_rnd=0 : rusi_tpat=1
							if rusi_tr_rnd=1 {
								rusi_tpat=4 : rusi_tatk_v=1
							}
							if rusi_tr_rnd=2 {
								rusi_tpat=5 : rusi_tatk_h=1
							}
						}
					}
				}
				rusiT+
				if (stage=3)&(rusiT>=10000) : rusiT=-1
				if (stage=6)&(rusiT>=8000) : rusiT=-1

				
				if BOSSH=1{;-----------���X�{�X
					;----------------�{�̍s���p�^�[��
					if leas_mpat=0{;���E����N��
						if leas_mdir=0 : leas_mx+=-leassp+sclob
						if leas_mdir=1 : leas_mx+=leassp+sclob
						if leas_mp>=10 : leassp- : leas_mp=-1
						leas_mp+
					}
					if leas_mpat=1{;���E�֑ޔ�
						if leas_mdir=0 : leas_mx+=-(leassp*leassp)+sclob : leas_my-=(leassp*leassp/12)
						if leas_mdir=1 : leas_mx+=(leassp*leassp)+sclob : leas_my-=(leassp*leassp/12)
						if leas_mp>=5 : leassp+ : leas_mp=-1
						leas_mp+
					}
					if leas_mpat=2{;��ʏォ��N��
						leas_mx+=sclob
						leas_my+=6
					}
					if leas_mpat=3{;��ʏォ��ޔ�
						leas_mx+=sclob
						leas_my-=leassp*leassp
						if leas_mp>=10 : leassp+ : leas_mp=-1
						leas_mp+
					}
					if leas_mpat=4{;��ʉ��؂�
						if leas_mdir=0 : leas_mx+=-(leassp*leassp/2)+sclob : leas_my-=(leassp*leassp/12)
						if leas_mdir=1 : leas_mx+=(leassp*leassp/2)+sclob : leas_my-=(leassp*leassp/12)
						if leas_mp>=10 : leassp+ : leas_mp=-1
						leas_mp+
					}
					if leas_mpat=5{;�󒆒�؂`
						leas_mx+=leasmov
					}
					if leas_mpat=6{;�󒆒�؂a
					}
					if leas_mpat=7{;���S���
						leas_mx+=sclob
					}
					if leas_mpat=8{;��ʊO
						leas_mx+=sclob
					}
					if leas_mpat=9{;��
						leas_mx+=sclob
					}
					;----------------�s���̌���
					if leas_mpat=0{
						if (leas_mdir=0)&(leas_mx<630) : leas_mpat=5
						if (leas_mdir=1)&(leas_mx>50) : leas_mpat=5
					}
					if leas_mpat=1{
						if (leas_mdir=0)&(leas_mx<-170) : leas_mpat=8
						if (leas_mdir=1)&(leas_mx>850) : leas_mpat=8
					}
					if leas_mpat=2{
						barrier=1
						if leas_my>30 : leas_mpat=7
					}
					if leas_mpat=3{
						if leas_my<-400: leas_mpat=8
					}
					if leas_mpat=4{
						if leashp<=3 : barrier=1 : else  : barrier=0
						if (leas_mdir=0)&(leas_mx<-170) : leas_mpat=8
						if (leas_mdir=1)&(leas_mx>850) : leas_mpat=8
						if needlep2>=4 {
							if harinum>=95 : harinum=0
							leasneedle.harinum=1
							leasneedlex.harinum=leas_mx
							leasneedley.harinum=leas_my-100
							leasneedlespeed.harinum=10
							harinum+
							if leashp<=3{
								if leasballnum>=95 : leasballnum=0
								leasball.leasballnum=1
								leasballx.leasballnum=leas_mx
								leasbally.leasballnum=leas_my-150
								leasballdir.leasballnum=rnd(2)
								leasballdiry.leasballnum=1+rnd(3)
								leasballdirx.leasballnum=1+rnd(3)
								leasballnum+
							}
							needlep2=-1
						}
						needlep2+
					}
					if leas_mpat=5{
						if leasactp5>=200 {
							if leashp<=2 : barrier=1
							leas_mpat=1
							leassp=1
							leasactp5=-500+rnd(500)
						}
						if leasballp>=30 {
							if leasballnum>=95 : leasballnum=0
							leasball.leasballnum=1
							if leas_mdir=0{
								leasballx.leasballnum=leas_mx
								leasbally.leasballnum=leas_my+20
								leasballdir.leasballnum=0
								leasballdiry.leasballnum=-1+rnd(5)
								leasballdirx.leasballnum=1+rnd(5)
							}
							if leas_mdir=1{
								leasballx.leasballnum=leas_mx+70
								leasbally.leasballnum=leas_my+20
								leasballdir.leasballnum=1
								leasballdiry.leasballnum=-1+rnd(5)
								leasballdirx.leasballnum=1+rnd(4)
							}
							leasballnum+
							leasballp=-1
						}
						if leashp<=2 : leasballp+
						if leashp<=2 : leasactp5+
						leasballp+
						leasactp5+
					}
					if leas_mpat=7 {
						barrier=1
						if (leasactp7>=500)&(burstp<=0) {
							leas_mpat=3
							leas_m3f=0
							leas_m3fx=120
							barrier=0
							leassp=1
							leasactp7=-300+rnd(300)
						}
						if needlep>=3 {
							if harinum>=95 : harinum=0
							leasneedle.harinum=1
							leasneedlex.harinum=-50+rnd(900)
							leasneedley.harinum=-100
							leasneedlespeed.harinum=7
							harinum+
							needlep=-5+rnd(5)
						}
						if leashp<=1 : needlep+
						needlep+
						leasactp7+
					}
					if leas_mpat=8{
						barrier=0
						if life>0{
							if leashp=5 : leasrnd=rnd(3)
							if leashp=4 : leasrnd=rnd(7)
							if leashp=3 : leasrnd=rnd(8)
							if leashp=2 : leasrnd=rnd(10)
							if leashp=1 : leasrnd=rnd(12)
							if (leasrnd=0)&(burstp<=0){
								leasrnd2=rnd(2)
								if leasrnd2=0 {
									leas_mx=850 : leas_mdir=0
								}
								if leasrnd2=1 {
									leas_mx=-170 : leas_mdir=1
								}
								leassp=10
								leas_my=50+rnd(80)
								leas_mpat=0
								leas_mp=0
								needlelimit=0
								needleneed=0
							}
							if leasrnd=1 {
								if (needlelimit<3)&(needleneed=0){
								leas_mpat=2
								leas_mx=340 : leas_my=-300
								leas_mp=0
								needlelimit+
								needleneed=1
								}
								
							}
							if (leasrnd=2)&(burstp<=0) {
								leasrnd2=rnd(2)
								if leasrnd2=0 {
									leas_mx=850 : leas_mdir=0
								}
								if leasrnd2=1 {
									leas_mx=-170 : leas_mdir=1
								}
								barrier=1
								leassp=3
								leas_my=100
								leas_mpat=4
								leas_mp=0
								needleneed=0
							}
							if (leasrnd=3)&(leashp<=4) {
									leas_mpat=9
									deathball=1
									deathballsize=900
									deathballx=cx+93
									needleneed=0
							}
							if leasrnd=4 {
								leas_mpat=8
									if (leasgrav=0)&(leashp<=4){
										leasgrav=1
										graviT=500+rnd(300)
										leasrnd2=rnd(2)
										if leasrnd2=0 : leasgravx=600 : leasgravdir=0
										if leasrnd2=1 : leasgravx=0 : leasgravdir=1
										if (leasrnd2=0)&(sclp>=400) : leasgravx=700 : leasgravdir=0
										if (leasrnd2=1)&(sclp<=0) : leasgravx=-30 : leasgravdir=1
										needleneed=0
									}
							}
							if leasrnd=5 {
								leas_mpat=8
									if (leas_rayA=0)&(leashp<=3) : leas_rayA=1 : leas_rayAx=-50+rnd(100) : leas_rayAr=-pi*0.479 : leas_rayAT=500+rnd(500)
									if (leas_rayB=0)&(leashp<=3) : leas_rayB=1 : leas_rayBx=650+rnd(100) : leas_rayBr=-pi*0.479 : leas_rayBT=500+rnd(500)
									needleneed=0
							}
							if leasrnd=6 {
								leas_mpat=8
								if (leascube.0=0)&(poscube.0=0)&(leashp<=4) : leascube.0=1 : leascubep.0=-300+rnd(500) : leascubedir.0=0 : leascubex.0=900 : leascubeT.cnt=500+rnd(700)
								;if (leascube.1=0)&(poscube.1=0)&(leashp<=1) : leascube.1=1 : leascubep.1=-300+rnd(500) : leascubedir.1=1 : leascubex.1=-100 : leascubeT.cnt=300+rnd(400)
								needleneed=0
							}
							if leasrnd=7 {
								leas_mpat=9
									deathball=1
									deathballsize=900
									deathballx=cx+93
									needleneed=0
							}
							if leasrnd=8 {
								leas_mpat=8
									if (leas_rayA=0)&(leashp<=3) : leas_rayA=1 : leas_rayAx=rnd(150) : leas_rayAr=-pi*0.479 : leas_rayAT=500+rnd(500)
									if (leas_rayB=0)&(leashp<=3) : leas_rayB=1 : leas_rayBx=550+rnd(150) : leas_rayBr=-pi*0.479 : leas_rayBT=500+rnd(500)
								needleneed=0
							}
							if leasrnd=9 {
								leasrnd2=rnd(2)
								if leasrnd2=0 {
									leas_mx=850 : leas_mdir=0
								}
								if leasrnd2=1 {
									leas_mx=-170 : leas_mdir=1
								}
								leassp=3
								leas_my=100
								leas_mpat=4
								leas_mp=0
								needleneed=0
							}
							if leasrnd=10 {
								leas_mpat=8
									if (leasgrav=0)&(leashp<=4){
										leasgrav=1
										graviT=500+rnd(300)
										leasrnd2=rnd(2)
										if leasrnd2=0 : leasgravx=600 : leasgravdir=0
										if leasrnd2=1 : leasgravx=0 : leasgravdir=1
										if (leasrnd2=0)&(sclp>=400) : leasgravx=700 : leasgravdir=0
										if (leasrnd2=1)&(sclp<=0) : leasgravx=-30 : leasgravdir=1
										needleneed=0
									}
							}
							if leasrnd=11 {
								leas_mpat=8
									if (leasgrav=0)&(leashp<=4){
										leasgrav=1
										graviT=500+rnd(300)
										leasrnd2=rnd(2)
										if leasrnd2=0 : leasgravx=600 : leasgravdir=0
										if leasrnd2=1 : leasgravx=0 : leasgravdir=1
										if (leasrnd2=0)&(sclp>=400) : leasgravx=700 : leasgravdir=0
										if (leasrnd2=1)&(sclp<=0) : leasgravx=-30 : leasgravdir=1
										needleneed=0
									}
							}
						}
							
					}
					;--------------���j�����w
					if leasgrav=1{
						leasgravx+=sclob
						if graviT<=0 : leasgrav=0
						graviT-
					}
					
					;----------���E�̃��[�U�[
					if leas_rayA=1{
						leas_rayAx+=sclob
						if leas_rayAT<=0 : leas_rayA=0
						leas_rayAT-
					}
					if leas_rayB=1{
						leas_rayBx+=sclob
						if leas_rayBT<=0 : leas_rayB=0
						leas_rayBT-
					}
					;----------���[�X�L���[�u
					repeat 2
					if leascube.cnt=1{
						if leascubep.cnt>=300 {
								if leascubedir.cnt=1 : leascubedir.cnt=0 : else : leascubedir.cnt=1
								leascubep.cnt=-300+rnd(300)
						}
						if leascubedir.cnt=0 : leascubex.cnt+=-3+sclob
						if leascubedir.cnt=1 : leascubex.cnt+=3+sclob
						if (leascubedir.cnt=0)&(leascubex.cnt<105+mappos) : leascubedir.cnt=1
						if (leascubedir.cnt=1)&(leascubex.cnt>695+mappos) : leascubedir.cnt=0
						leascubep.cnt+
						if leascubeT.cnt<=0 : leascube.cnt=0
						leascubeT.cnt-
					}
					loop
					repeat enam
					;----------���[�X��
					if leasball.cnt=1{
						leasballx.cnt+=sclob
						if leasballdir.cnt=0 : leasballx.cnt-=leasballdirx.cnt : else : leasballx.cnt+=leasballdirx.cnt
						leasbally.cnt+=leasballdiry.cnt
					}
					;----------���[�X�j
					if leasneedle.cnt=1{
						leasneedlex.cnt+=sclob
						leasneedley.cnt+=leasneedlespeed.cnt		
					}
					loop
					;----------���[�X�{�[��
					if deathball=1{
						deathballx+=sclob
					}
		}
				
	return
*hit
				if muteki=1 {
					repeat enam
					ehit.cnt=0
					loop
					mutekiT+
				}
				if enmuteki=1 : enmutekiT+
																	;----------------------���G����
				if bossmode=1 {
					if mutekiT>30 : muteki=0 : mutekiT=0
				}
				if bossmode=2 {
					if mutekiT>100 : muteki=0 : mutekiT=0
				}
				if bossmode=0 {
					if mutekiT>150 : muteki=0 : mutekiT=0     ; �e�X�g�d�l����
				}
				if bossmode=4 {
					if mutekiT>80 : muteki=0 : mutekiT=0
				}
				if enmutekiT>50 : enmuteki=0 : enmutekiT=0
				if sakumuteki=1 : muteki=1
				repeat enam
				if (en.cnt=1)&(muteki=0) {	;�G�̓����蔻��
						if etype.cnt=1 {    ;���O��
							if (cx+83<enx.cnt+90)&(cx+113>enx.cnt+28)&(dash=0)&(sumhit<=4) {
								if ehit.cnt=0 :	ehit.cnt=1 : hitmog+ : posses=1 : stun=1
							}	
						}
						if etype.cnt=2 {    ;�J���X
							if (cx+83<enx.cnt+90)&(cx+113>enx.cnt+28)&(down=0) {
								if ehit.cnt=0 :	ehit.cnt=1 : hitkro+ : stun=1
							}	
						}
						if (etype.cnt=3) {	;�N���̎�
							repeat 4
							if itonam2>=5 : itonam2=1
							if (cx+83<itox.(cnt*itonam2)+83)&(cx+113>itox.(cnt*itonam2)+36)&(down=0)&(ito.(cnt*itonam2)=1) {
								kumoito.(cnt*itonam2)=1 : posses=1 : stun=1
							}
							loop
							itonam2+
						}
						if (etype.cnt=4) {				;���[��
							if (warmstun.cnt<=0)&(warm_on.cnt=0)&(cx+83<enx.cnt+150)&(cx+113>enx.cnt-48) {
								warm_on.cnt=1
							}
							if (warmhant.cnt=1)&(cx+83<enx.cnt+70)&(cx+113>enx.cnt+32) {
								if ehit.cnt=0 : ehit.cnt=1 : hitwarm.cnt=1 : stun=1
							}
							warmstun.cnt-
						}
						if (etype.cnt=5) {				;�q��
							if (hillhant.cnt=1)&(cx+92<enx.cnt+30)&(cx+92>enx.cnt+10) {
								hithill.cnt=1 : poshill+ : en.cnt=0  : hillatk.cnt=0 : hillhant.cnt=0 : pate7.cnt=0 : fe7x.cnt=80
							}
						}
						if (etype.cnt=6) {			; �s���j�A
							if (pirastun.cnt<=0)&(pira_on.cnt=0)&(cx+83<enx.cnt+180)&(cx+113>enx.cnt-78) {
								pira_on.cnt=1
								if enx.cnt<cx : piraatkdir.cnt=1 : else : piraatkdir.cnt=0
							}
							if (pirahant.cnt=1)&(cx+83<enx.cnt+90)&(cx+113>enx.cnt+12) {
								if ehit.cnt=0 : ehit.cnt=1 : hitpira.cnt=1 : stun=1
							}
							pirastun.cnt-
						}
						if etype.cnt=9 {    ;�}�E�X
							if (cx+83<enx.cnt+128)&(cx+113>enx.cnt+58)&(down=1) {
								if ehit.cnt=0 :	ehit.cnt=1 : hitkuti.cnt=1 : stun=1
							}	
						}
						if etype.cnt=10 {    ;�C�k
							if (cx+83<enx.cnt+128)&(cx+113>enx.cnt+58)&(dash=0) {
								if ehit.cnt=0 :	ehit.cnt=1 : hitdog.cnt=1 : stun=1
							}	
						}
						if etype.cnt=12 {; �J�U�O���}
							if (cx+83<enx.cnt+173)&(cx+113>enx.cnt+13)&(kaza_on.cnt=1) {
								if ehit.cnt=0 :	ehit.cnt=1 : hitjairo.cnt=1 : stun=1
							}	
						}
						if etype.cnt=13 {; �}�}
								if mamahand.cnt>=30 : mamahand_on.cnt=rnd(5) : mamahand.cnt=-50+rnd(50)
								if (mamahand_on.cnt=4)&(BOSSF=1)&(mamaatk.cnt=0){
									mamahand_on.cnt=0
									mamaatk2.cnt=1
									mamaatk.cnt=1
									maatkp.cnt=0
									maatkx.cnt=555
								}
								if (cx+83<enx.cnt+195)&(cx+113>enx.cnt-10)&(mamaatk.cnt=0)&(mamastun.cnt<=0) {
									mamaatk.cnt=1 : maatkp.cnt=0 : maknife.cnt=0 : maatkx.cnt=0
								}
								if (cx+83<enx.cnt+205)&(cx+113>enx.cnt+93)&(maknife.cnt=1)&(endir=0) {
									if ehit.cnt=0 :	ehit.cnt=1 : hitmama.cnt=1 : stun=1
								}	
								if (cx+83<enx.cnt+103)&(cx+113>enx.cnt-10)&(maknife.cnt=1)&(endir=1) {
									if ehit.cnt=0 :	ehit.cnt=1 : hitmama.cnt=1 : stun=1
								}
								if (cx+83<enx.cnt+555)&(cx+113>enx.cnt+93)&(marance.cnt=2)&(endir=0)&(down=0) {
									if ehit.cnt=0 :	ehit.cnt=1 : hitmama2.cnt=1 : stun=1
								}	
								if (cx+83<enx.cnt+103)&(cx+113>enx.cnt-370)&(marance.cnt=2)&(endir=1)&(down=0) {
									if ehit.cnt=0 :	ehit.cnt=1 : hitmama2.cnt=1 : stun=1
								}
								if (cx+83<enx.cnt+370)&(cx+113>enx.cnt+93)&(marance.cnt=1)&(endir=0)&(down=0) {
									if ehit.cnt=0 :	ehit.cnt=1 : hitmama2.cnt=1 : stun=1
								}	
								if (cx+83<enx.cnt+103)&(cx+113>enx.cnt-185)&(marance.cnt=1)&(endir=1)&(down=0) {
									if ehit.cnt=0 :	ehit.cnt=1 : hitmama2.cnt=1 : stun=1
								}
								mamastun.cnt-
								if BOSSF=1 : mamahand.cnt+
						}
		
				}
				loop
				if BOSSA=1 {
					if (envyhantei=1)&(muteki=0) {			;�����B�A�^���̕ӂ蔻��
						if (cx+83<envplax+70)&(cx+113>envplax+32) {
							if BosshitA=0 : BosshitA=1 : stun=1
						}
					}
				}
				if BOSSB=1 {
					if (wrahantei=1)&(muteki=0) {			;�T�^���̓����蔻��
						if wradir=0 {
							if (cx+83<wraplax+120)&(cx+113>wraplax+30) {
								if BosshitB=0 : BosshitB=1 : stun=1
							}
						}
						if wradir=1 {
							if (cx+83<wraplax+210)&(cx+113>wraplax+120) {
								if BosshitB=0 : BosshitB=1 : stun=1
							}
						}
					}
					if (wrahantei=2)&(muteki=0) {
						if wradir=0 {
							if (cx+83<wraplax+240)&(cx+113>wraplax-70)&(down=0) {
								if wrapos=0 : wrapos=1 : stun=1
							}
						}
						if wradir=1 {
							if (cx+83<wraplax+310)&(cx+113>wraplax)&(down=0) {
								if wrapos=0 : wrapos=1 : stun=1
							}
						}
					}
					if (wrahantei=3)&(muteki=0) {
						if wradir=0 {
							if (cx+83<wraplax+80)&(cx+113>wraplax+20)&(down=0) {
								if wrapos=0 : wrapos=2 : stun=1
							}
						}
						if wradir=1 {
							if (cx+83<wraplax+160)&(cx+113>wraplax+100)&(down=0) {
								if wrapos=0 : wrapos=2 : stun=1
							}
						}
					}
				}
				if BOSSC=1 {;�}�����̓����蔻��
						if (down=0)&(cx+83<grex+160)&(cx+113>grex+40)&(grey+160>=245)&(muteki=0)&(mamohit=0)&(kemurihitsum=0) : mamohit=1 : stun=1
						if (down=1)&(cx+83<grex+160)&(cx+113>grex+40)&(grey+160>=380)&(muteki=0)&(mamohit=0)&(kemurihitsum=0) : mamohit=1 : stun=1
						repeat kemu
						if (down=0)&(cx+83<kemurix.cnt+145)&(kemuri_on.cnt=1)&(cx+113>kemurix.cnt+55)&(kemuriy.cnt+150>=cy+11)&(kemuriy.cnt+30<=cy+80)&(muteki=0)&(mamohit=0)&(kemurihit.cnt=0) : kemurihit.cnt=1 : kemuri_on.cnt=0 : stun=1
						if (down=1)&(cx+83<kemurix.cnt+145)&(kemuri_on.cnt=1)&(cx+113>kemurix.cnt+55)&(kemuriy.cnt+150>=380)&(muteki=0)&(mamohit=0)&(kemurihit.cnt=0) : kemurihit.cnt=1 : kemuri_on.cnt=0 : stun=1
						loop
						kemurihitsum=0
						repeat kemu
						kemurihitsum+=kemurihit.cnt
						loop
				}
				if BOSSD=1 {;�x���t�F�S�[���̓����蔻��
					if (sclp=0)&(beruhunt=1)&(muteki=0) : beruhit=1 : stun=1
					if (sclp<=30)&(beruhunt2=1)&(muteki=0) : beruhit=2 : stun=1
					repeat bkemu
					if (down=0)&(dash=0)&(cx+83<bkemu2x.cnt+140)&(bkemu2_on.cnt=1)&(cx+113>bkemu2x.cnt+60)&(bkemu2y.cnt+145>=cy+11)&(bkemu2y.cnt+30<=cy+85)&(muteki=0)&(posses=0)&(bkemu2hit.cnt=0) : bkemu2hit.cnt=1 : bkemu2_on.cnt=0 : stun=1
					if (down=1)&(cx+83<bkemu2x.cnt+140)&(bkemu2_on.cnt=1)&(cx+113>bkemu2x.cnt+60)&(bkemu2y.cnt+145>=380)&(muteki=0)&(bkemu2hit.cnt=0)&(posses=0) : bkemu2hit.cnt=1 : bkemu2_on.cnt=0 : stun=1
					loop
					repeat 2
					if (down=1)&(cx+83<bkemu2x.cnt+750)&(cx+113>bkemu2x.cnt+150)&(muteki=0)&(posses=0) : poison=1 : else : poison=0					
					loop
				}
				if BOSSE=1{;-----------�A�X���f�E�X�����蔻��
					if (acid1=1)&(lustlimit=0){
						if ((cx+89<acidx+80)&(cx+113>acidx+20)&(down=0)&(acidy+40<=430))||((cx+79<acidx+80)&(cx+123>acidx+20)&(down=1)&(acidy+60>=380)&(acidy+40<=460)) : hitacid=1 : stun=1 : stunoff=0
					}
					if (acid2=1)&(lustlimit=0){
						if ((cx+89<acidx+80)&(cx+113>acidx+20)&(down=0)&(acidy+40<=430))||((cx+79<acidx+70)&(cx+123>acidx+30)&(down=1)&(acidy+60>=380)) : hitacid=1 : stun=1 : stunoff=0
					}
					if (acid3=1)&(lustlimit=0){
						if ((cx+89<acidx+80)&(cx+113>acidx+20)&(down=0)&(acidy+40<=430))||((cx+79<acidx+70)&(cx+123>acidx+30)&(down=1)&(acidy+60>=380))&(hitacid=0) : hitacid=1 : stun=1 : stunoff=0
					}
					if (lustbrits=1)&(lustlimit=0){
						if (cx+89<lustx+270)&(cx+113>lustx+130)&(lustdir=1)&(lustatari=0) : lustatari=1 : stun=1 : stunoff=0
						if (cx+89<lustx+220)&(cx+113>lustx+80)&(lustdir=0)&(lustatari=0) : lustatari=1 : stun=1 : stunoff=0
					}
					if lustlimit=1{
						if (cx+89<Eballx+75)&(cx+113>Eballx+25)&(Ebally+75>=cy+30)&(350>=Ebally+25)&(down=0)&(muteki=0) : EballhitA=1 : stun=1 : muteki=1
						if (cx+69<Eballx+75)&(cx+133>Eballx+25)&(Ebally+75>=380)&(450>=Ebally+25)&(down=1)&(muteki=0) : EballhitA=1 : stun=1 : muteki=1
						if (lustball1=1)&(cx+89<Eball1x+58)&(cx+113>Eball1x+42)&(Eball1y+58>=cy+30)&(350>=Eball1y+42)&(down=0)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball1=1)&(cx+89<Eball1x+58)&(cx+113>Eball1x+42)&(Eball1y+58>=380)&(450>=Eball1y+42)&(down=1)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball2=1)&(cx+89<Eball2x+58)&(cx+113>Eball2x+42)&(Eball2y+58>=cy+30)&(350>=Eball2y+42)&(down=0)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball2=1)&(cx+89<Eball2x+58)&(cx+113>Eball2x+42)&(Eball2y+58>=380)&(450>=Eball2y+42)&(down=1)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball3=1)&(cx+89<Eball3Ax+58)&(cx+113>Eball3Ax+42)&(Eball3Ay+58>=cy+30)&(350>=Eball3Ay+42)&(down=0)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball3=1)&(cx+89<Eball3Ax+58)&(cx+113>Eball3Ax+42)&(Eball3Ay+58>=380)&(450>=Eball3Ay+42)&(down=1)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball3=1)&(cx+89<Eball3Bx+58)&(cx+113>Eball3Bx+42)&(Eball3By+58>=cy+30)&(350>=Eball3By+42)&(down=0)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball3=1)&(cx+89<Eball3Bx+58)&(cx+113>Eball3Bx+42)&(Eball3By+58>=380)&(450>=Eball3By+42)&(down=1)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball3=1)&(cx+89<Eball3Cx+58)&(cx+113>Eball3Cx+42)&(Eball3Cy+58>=cy+30)&(350>=Eball3Cy+42)&(down=0)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball3=1)&(cx+89<Eball3Cx+58)&(cx+113>Eball3Cx+42)&(Eball3Cy+58>=380)&(450>=Eball3Cy+42)&(down=1)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball3=1)&(cx+89<Eball3Dx+58)&(cx+113>Eball3Dx+42)&(Eball3Dy+58>=cy+30)&(350>=Eball3Dy+42)&(down=0)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball3=1)&(cx+89<Eball3Dx+58)&(cx+113>Eball3Dx+42)&(Eball3Dy+58>=380)&(450>=Eball3Dy+42)&(down=1)&(muteki=0) : EballhitB=1 : stun=1 : muteki=1
						if (lustball4=1)&(cx+89<Eball4x+75)&(cx+113>Eball4x+25)&(Eball4y+75>=cy+30)&(350>=Eball4y+25)&(down=0)&(muteki=0) : EballhitA=1 : stun=1 : muteki=1
						if (lustball4=1)&(cx+89<Eball4x+75)&(cx+113>Eball4x+25)&(Eball4y+75>=380)&(450>=Eball4y+25)&(down=1)&(muteki=0) : EballhitA=1 : stun=1 : muteki=1
						if (lustball5=1)&(cx+89<Eball5x+75)&(cx+113>Eball5x+25)&(Eball5y+75>=cy+30)&(350>=Eball5y+25)&(down=0)&(muteki=0) : EballhitA=1 : stun=1 : muteki=1
						if (lustball5=1)&(cx+89<Eball5x+75)&(cx+113>Eball5x+25)&(Eball5y+75>=380)&(450>=Eball5y+25)&(down=1)&(muteki=0) : EballhitA=1 : stun=1 : muteki=1
					}
				}
				if (lustlast=1)&(map=69){;�A�X���f�E�X�Ō�
					if (down=0)&(cx+83<lustlastx+145)&(cx+113>lustlastx+55)&(dash=0)&(lustlasty+150>=cy+11)&(lustlasty+30<=cy+80) : lustlast=0 : lustlasthit=1
						if (down=1)&(cx+83<lustlastx+145)&(cx+113>lustlastx+55)&(dash=0)&(lustlasty+150>=380) : lustlast=0 : lustlasthit=1
				}

				;----------------------------�x���[�u�u����
				if BOSSF=1{
					repeat 5
					if (cx+89<sizukux.cnt+68)&(cx+113>sizukux.cnt+50)&(sizukuy.cnt+65>=cy+30)&(350>=sizukuy.cnt+25)&(down=0)&(muteki=0) : hitsizuku.cnt=1 : stun=1 : muteki=1
					if (cx+89<sizukux.cnt+68)&(cx+113>sizukux.cnt+50)&(sizukuy.cnt>=380)&(450>=sizukuy.cnt+25)&(down=1)&(muteki=0) : hitsizuku.cnt=1 : stun=1 : muteki=1
					loop
					repeat enam
					if slaim.cnt=1{
						if (cx+83<slaimx.cnt+90)&(cx+113>slaimx.cnt+28)&(dash=0)&(hitsla=0)&(muteki=0) {
							if ehit.cnt=0 :	ehit.cnt=1 : hitsla=1 : posses=1 : stun=1 : muteki=1
						}	
					}
					if floa.cnt=1{
						if (cx+83<floax.cnt+90)&(cx+113>floax.cnt+28)&(dash=0)&(muteki=0) {
							if ehit.cnt=0 : ehit.cnt=1 : deadslaim=1 : stun=1 : muteki=1
						}	
					}
					loop
				}
				;------------------�^���V�t�F������
				if BOSSG=1{
					rusi_tzone=0
					if rusi_tpat=1{
						if (rusi_tdir=0)&(cx+89<rusitrx+250)&(cx+113>rusitrx+30) : rusi_tzone=1
						if (rusi_tdir=1)&(cx+89<rusitrx+270)&(cx+113>rusitrx+50) : rusi_tzone=1
					}
					if rusi_tatk_v_on=1{
						if (rusi_tdir=0)&(cx+89<rusitrx+180)&(cx+113>rusitrx)&(muteki=0) : rusi_tatk_v_hit=1 : stun=1 : muteki=1
						if (rusi_tdir=1)&(cx+89<rusitrx+300)&(cx+113>rusitrx+120)&(muteki=0) : rusi_tatk_v_hit=1 : stun=1 : muteki=1
					}
					if rusi_tatk_h_on=1{
						if (rusi_tdir=0)&(cx+89<rusitrx+250)&(cx+113>rusitrx-200)&(down=0)&(muteki=0) : rusi_tatk_h_hit=1 : stun=1 : muteki=1
						if (rusi_tdir=1)&(cx+89<rusitrx+500)&(cx+113>rusitrx+50)&(down=0)&(muteki=0) : rusi_tatk_h_hit=1 : stun=1 : muteki=1
					}
					if rusi_tpat=3{
						if (rusi_tdir=0)&(cx+89<rusitrx+250)&(cx+113>rusitrx+50)&(down=0)&(muteki=0) : rusi_tjump_hit=1 : stun=1 : muteki=1
						if (rusi_tdir=1)&(cx+89<rusitrx+250)&(cx+113>rusitrx+50)&(down=0)&(muteki=0) : rusi_tjump_hit=1 : stun=1 : muteki=1
					}
					if (rusi_tpat=1)|(rusi_tpat=2){
						if (cx+89<rusitrx+250)&(cx+113>rusitrx+50)&(dash=0)&(muteki=0) : rusipos=1 : stun=1 : muteki=1
					}
					if rusi_tsyoku1_on=1{
						if (cx+89<rusitrx+100+70)&(cx+113>rusitrx+100+30)&(muteki=0) : rusipos=2 : stun=1 : muteki=1
					}
					if rusi_tsyoku2_on=1{
						if (cx+89<rusitrx+100+70)&(cx+113>rusitrx+100+30)&(muteki=0) : rusi_tsyoku2_hit=1 : stun=1 : muteki=1
					}
					if rusi_tsyoku3_on=1{
						if (cx+89<rusitrx+100+60)&(cx+113>rusitrx+100+40)&(muteki=0) : rusi_tsyoku3_hit=1 : stun=1 : muteki=1
					}
					;----------------���V�t�F���ɍU��
					if equipB=1{
						if eqhit=1{
							if (dir=0)&(rusitrx+50<cx+83)&(cx-200<rusitrx+250)&(rusitrx>=-300)&(rusitrx<=800)&(enmuteki=0) : sarap=0 : saradam=1 : rusihp- : enmuteki=1 : rusidam=1
							if (dir=1)&(rusitrx+250>cx+113)&(cx+385>rusitrx+50)&(rusitrx>=-300)&(rusitrx<=800)&(enmuteki=0) : sarap=0 : saradam=1 : rusihp- : enmuteki=1 : rusidam=1
						}
					}
					if equipC=1{
						if eqhit=1{
							if (dir=0)&(rusitrx+50<cx+83)&(icex+40<rusitrx+250)&(icex+60>rusitrx+50)&(rusitrx>=-300)&(rusitrx<=800)&(enmuteki=0) : rusihp-=3 : enmuteki=1 : rusidam=1
							if (dir=1)&(rusitrx+250>cx+113)&(icex+40<rusitrx+250)&(icex+60>rusitrx+50)&(rusitrx>=-300)&(rusitrx<=800)&(enmuteki=0) : rusihp-=3 : enmuteki=1 : rusidam=1
						}
					}
				}
				;----------------------���[�X����
				if BOSSH=1 {
					;-----------------���[�U�[�̓��蔻��
					if leas_rayA=1{
						rayline=0.0
						rayline=200.0
						repeat 8
						if (cx+89<cos(leas_rayAr*pi)*rayline+leas_rayAx)&(cx+113>cos(leas_rayAr*pi)*rayline+leas_rayAx)&(sin(leas_rayAr*pi)*rayline-30.0<450)&(sin(leas_rayAr*pi)*rayline-30.0>380)&(muteki=0) : hitleas_ray=1 : stun=1 : muteki=1
						rayline+=50.0
						loop
					}
					if leas_rayB=1{
						rayline=0.0
						rayline=200.0
						repeat 8
						if (cx+89<cos(-leas_rayBr*pi)*rayline+leas_rayBx)&(cx+113>cos(-leas_rayBr*pi)*rayline+leas_rayBx)&(sin(leas_rayBr*pi)*rayline-30.0<450)&(sin(leas_rayBr*pi)*rayline-30.0>380)&(muteki=0) : hitleas_ray=1 : stun=1 : muteki=1
						rayline+=50.0
						loop
					}
					;-----------------���ʂ̓��蔻��
					repeat enam
					if (leasball.cnt=1){
						if (hitleasballsam=0)&(cx+89<40+leasballx.cnt)&(cx+113>10+leasballx.cnt)&(40+leasbally.cnt>=cy+30)&(350>=10+leasbally.cnt)&(down=0)&(muteki=0) : hitleasball.cnt=1 : stun=1 : muteki=1 : leasball.cnt=0
					}
					if (leasball.cnt=1){
						if (hitleasballsam=0)&(cx+89<40+leasballx.cnt)&(cx+113>10+leasballx.cnt)&(40+leasbally.cnt>=380)&(450>=10+leasbally.cnt)&(down=1)&(muteki=0) : hitleasball.cnt=1 : stun=1 : muteki=1 : leasball.cnt=0
					}
					loop
					;-----------------�j�̂�����͂�Ă�
					repeat enam
					if (leasneedle.cnt=1){
						if (hitleasneedlesam=0)&(cx+89<28+leasneedlex.cnt)&(cx+113>22+leasneedlex.cnt)&(105+leasneedley.cnt>=cy+30)&(350>=25+leasneedley.cnt)&(down=0)&(muteki=0) : hitleasneedle.cnt=1 : stun=1 : muteki=1
					}
					if (leasneedle.cnt=1){
						if (hitleasneedlesam=0)&(cx+89<28+leasneedlex.cnt)&(cx+113>22+leasneedlex.cnt)&(105+leasneedley.cnt>=380)&(450>=25+leasneedley.cnt)&(down=1)&(muteki=0) : hitleasneedle.cnt=1 : stun=1 : muteki=1
					}
					loop
					;---------------------�L���[�u
					repeat 2
					if (leascube.cnt=1)&(cx+89<170+leascubex.cnt)&(cx+113>40+leascubex.cnt)&(dash=0)&(muteki=0)&(poscubesam=0) : poscube.cnt=1 : leascube.cnt=0 : stun=1 : muteki=1
					loop
					;-------------------�f�X�{�[��
					if deathball_on=1{
						if (cx+89<deathballx+90)&(cx+113>deathballx-90)&(muteki=0)&(poscubesam=0) : stun=1 : muteki=1 : deathballhit=1
					}
					;-------------------�����w
					if leasgrav=1{
						if leasgravdir=0{
							if cx+113>leasgravx+90 : stun=1 : muteki=1 : gravhit=1
						}
						if leasgravdir=1{
							if cx+83<leasgravx+126 : stun=1 : muteki=1 : gravhit=1
						}
					}
					;-------------------���[�X�ɍU��
					if (burst_on=1)&(leas_mx>=-120)&(leas_mx<=800)&(leas_my>=0)&(barrier=0) : burst_on=0 : leashp- : burst=0 : leasdam=1
				}
				;-----------------------------�g���b�v�̓����蔻��
				repeat enam
				if trap.cnt=1 {
					if (cx+83<trapx.cnt+90)&(cx+113>trapx.cnt+28)&(dash=0) {
						hittrap.cnt=1 : posses=1 : stun=1
						if trapdam.cnt=0 {
							if life>25 : life-=25 : else  : life=1
							trapdam.cnt=1
						}
					}
				}
				loop
				if (BOSSD=1)&(thx<berux+mappos+310)&(throwout=1)&(throwhit=0) {;--------------�A�O���I�u�r�x���t�F
					throwhit=1 : beruhp+ : berudame=100
				}
				if etype.0=7 {		;�A���m�E��
					if (cx+83<enx.0+125)&(cx+113>enx.0+50) : dead=17 : gosub *event_dead
				}
				if etype.0=7 {		;�A���m�E���݂Ă͂����Ȃ�
					if (cx+113>enx.0-1000)&(dir=1)&(map=61) : stun=1 : mitana=1 : muteki=1 : life=100
				}
				;--------------------�A�X���f�E�X�Ƀq�b�g
				if (BOSSE=1)&(lustlimit=0)&(eqhit=1)&(lust_on=1)&(lustdam=0){
					if ((dir=0)&(cx<lustx+300)&(cx+93>lustx+200))||((dir=1)&(cx+185>lustx+50)&(cx+93<lustx+200)) : lustdam=1 : eqhit=0 : lustHP+
				}
														
				
		return
					
*draw									
													;�摜�`��	
													;--------------------------���
					if (stone=0)&(poshill<=0)&(slow=0)&(musimusi=0) : fatalst=0
					if (stone>0)|(poshill>0)|(slow=1)|(musimusi=1) : fatalst=1
					if life!nowlife {
						if (nure=0)&(fatalst=0)&(stage!=6) {
							if (life>30)&(badst=1) : buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"
							if (life<=30)&(goodst=1) : buffer 2 : picload "wseta.bmp" : buffer 3 : picload "wsetb.bmp"
						}
						if (nure=0)&(fatalst=0)&(stage=6) {
							if (life>30)&(badst=1) : buffer 2 : picload "setacore.bmp" : buffer 3 : picload "setbcore.bmp"
							if (life<=30)&(goodst=1) : buffer 2 : picload "wsetacore.bmp" : buffer 3 : picload "wsetbcore.bmp"
						}
					}
					if (fatalst!nowst)&(fatalst=0)&(nure=0)&(stage!=6) {
						if life<=30 : buffer 2 : picload "wseta.bmp" : buffer 3 : picload "wsetb.bmp"
						if life>30 : buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"
					}
					if (fatalst!nowst)&(fatalst=0)&(nure=0)&(stage=6) {
						if life<=30 : buffer 2 : picload "wsetacore.bmp" : buffer 3 : picload "wsetbcore.bmp"
						if life>30 : buffer 2 : picload "setacore.bmp" : buffer 3 : picload "setbcore.bmp"
					}
					if (fatalst!nowst)&(fatalst=1)&(nure=0)&(stage!=6) {
						buffer 2 : picload "wseta.bmp" : buffer 3 : picload "wsetb.bmp"
					}
					if (fatalst!nowst)&(fatalst=1)&(nure=0)&(stage=6) {
						buffer 2 : picload "wsetacore.bmp" : buffer 3 : picload "wsetbcore.bmp"
					}
					if (kawaki>=5000)&(life<=30) : buffer 2 : picload "wseta.bmp" : buffer 3 : picload "wsetb.bmp" : nure=0 : kawaki=0
					if (kawaki>=5000)&(fatalst=0)&(life>30) : buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp" : nure=0 : kawaki=0
					
					gsel 0
					if life>30 : goodst=1 : badst=0 : else : badst=1 : goodst=0
					nowlife=life
					nowst=fatalst
					redraw 0
					;-------------------���X�{�X�w�i
					;if BOSSH=1{
					;	pos mappos,lastmapy+1500 : gmode 0 : gcopy 10,0,0,1200,1500
					;	pos mappos,lastmapy : gmode 0 : gcopy 10,0,0,1200,1500
					;	pos mappos,lastmapy-1500 : gmode 0 : gcopy 10,0,0,1200,1500
					;	if lastmapy=1500 : lastmapy=0
					;}
					
					;mappos+=sclob 		;�w�i�̃X�N���[��
					if BOSSH=0 : pos mappos,0 : gmode 0 :  gcopy 5,0,0,mapsizeX,mapsizeY ;�w�i��\��
					if BOSSH=1 : pos mappos,0 : gmode 0 :  gcopy 5,0,0,mapsizeX,mapsizeY ;�w�i��\��
					if (map=68)&(ev30=0) {
						pos mappos+1168,0 : gmode 0 :  gcopy 5,0,0,mapsizeX,mapsizeY
						pos mappos-1168,0 : gmode 0 :  gcopy 5,0,0,mapsizeX,mapsizeY
						if sclp<=200 : sclp=368
						if mappos>=0 : mappos-=1168
					}
					gmode 2
													;----------------�X�N���[���̃Y���␳
					if (scl=1)&((map!=68)&(ev30=0)) {
						if (cx>292) : sclp=sclM : mappos=gendo
						if (cx<289) : sclp=0 : mappos=0
					}
										;-------------------���[�X
				if ((map=21)&(ev10=1))|(map=65) {
					pos 170,200+leasy : gmode 2 : gcopy 26,leasf,0,60,100
					if leasp=0 : leasf=120
					if leasp=300 : leasf=180
					if leasp=305 : leasf=120
					if leasp=600 : leasf=180
					if leasp=605 : leasf=120
					if leasp=630 : leasf=180
					if leasp=635 : leasf=120 : leasp=-1
					leasp+
					if leasyp=20 : leasy+
					if leasyp=40 : leasy+
					if leasyp=60 : leasy+
					if leasyp=80 : leasy-
					if leasyp=100 : leasy-
					if leasyp=120 : leasy- : leasyp=-1
					leasyp+
				}
				if (map=95) {
					pos 600,200+leasy : gmode 2 : gcopy 26,leasf,0,60,100
					if leasp=0 : leasf=0
					if leasp=300 : leasf=60
					if leasp=305 : leasf=0
					if leasp=600 : leasf=60
					if leasp=605 : leasf=0
					if leasp=630 : leasf=60
					if leasp=635 : leasf=0 : leasp=-1
					leasp+
					if leasyp=20 : leasy+
					if leasyp=40 : leasy+
					if leasyp=60 : leasy+
					if leasyp=80 : leasy-
					if leasyp=100 : leasy-
					if leasyp=120 : leasy- : leasyp=-1
					leasyp+
				}
				;-----------------�e�l
				if map=50 {;�`����
					kageAx=500+mappos
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,0,0,185,256 : else : gcopy 28,185,0,185,256
					color 255,255,255
				}
				if map=52 {;�a����
					kageAx=300+mappos
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,370,0,185,256 : else : gcopy 28,555,0,185,256
					color 255,255,255
				}
				if map=64 {;�b����
					kageAx=500+mappos
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,740,0,185,256 : else : gcopy 28,925,0,185,256
					color 255,255,255
				}
				if map=67 {;�c����
					kageAx=500+mappos
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,0,256,185,256 : else : gcopy 28,185,256,185,256
					color 255,255,255
				}
				if map=67 {;�d����
					kageBx=200+mappos
					pos kageBx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageBx+92>cx+92 : gcopy 28,370,256,185,256 : else : gcopy 28,555,256,185,256
					color 255,255,255
				}
				if map=63 {;�e����
					kageAx=250+mappos
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,740,256,185,256 : else : gcopy 28,925,256,185,256
					color 255,255,255
				}
				if map=74 {;�f����
					kageAx=150+mappos
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,0,512,185,256 : else : gcopy 28,185,512,185,256
					color 255,255,255
				}
				if map=79 {;�g����
					kageAx=520+mappos
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,370,512,185,256 : else : gcopy 28,555,512,185,256
					color 255,255,255
				}
				if map=77 {;�h����
					kageAx=520+mappos
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,740,512,185,256 : else : gcopy 28,925,512,185,256
					color 255,255,255
				}
				if map=109 {;�i����
					kageAx=300
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,0,768,185,256 : else : gcopy 28,185,768,185,256
					color 255,255,255
				}
				if map=105 {;�j����
					kageAx=200
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,370,768,185,256 : else : gcopy 28,555,768,185,256
					color 255,255,255
				}
				if map=110 {;�k����
					kageAx=300
					pos kageAx,200 : color 0,0,0 : gmode 4,,,kagep
					if kageAx+92>cx+92 : gcopy 28,740,768,185,256 : else : gcopy 28,925,768,185,256
					color 255,255,255
				}
				if map=122 {;�S���W��
					pos 0+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 0+mappos+92>cx+92 : gcopy 28,0,0,185,256 : else : gcopy 28,185,0,185,256
					pos 185+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 185+mappos+92>cx+92 : gcopy 28,370,0,185,256 : else : gcopy 28,555,0,185,256
					pos 370+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 370+mappos+92>cx+92 : gcopy 28,740,0,185,256 : else : gcopy 28,925,0,185,256
					pos 555+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 555+mappos+92>cx+92 : gcopy 28,0,256,185,256 : else : gcopy 28,185,256,185,256
					pos 740+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 740+mappos+92>cx+92 : gcopy 28,370,256,185,256 : else : gcopy 28,555,256,185,256
					pos 925+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 925+mappos+92>cx+92 : gcopy 28,740,256,185,256 : else : gcopy 28,925,256,185,256
					pos 1110+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 1110+mappos+92>cx+92 : gcopy 28,0,512,185,256 : else : gcopy 28,185,512,185,256
					pos 1295+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 1295+mappos+92>cx+92 : gcopy 28,370,512,185,256 : else : gcopy 28,555,512,185,256
					pos 1480+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 1480+mappos+92>cx+92 : gcopy 28,740,512,185,256 : else : gcopy 28,925,512,185,256
					pos 1665+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 1665+mappos+92>cx+92 : gcopy 28,0,768,185,256 : else : gcopy 28,185,768,185,256
					pos 1850+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 1850+mappos+92>cx+92 : gcopy 28,370,768,185,256 : else : gcopy 28,555,768,185,256
					pos 2035+mappos,200 : color 0,0,0 : gmode 4,,,kagep
					if 2035+mappos+92>cx+92 : gcopy 28,740,768,185,256 : else : gcopy 28,925,768,185,256
				}
				
				kagep+
				if kagep>=230 : kagep=180
				gmode 2
				;-----------------------�G�̕`��(�L�����̌��)
					repeat enam
					if (en.cnt=1)&(etype.cnt=3) {				;�N���p�^�[��
						if posses=0 { 
							if kumo_keikai.cnt=1 {	
								if edir.cnt=0 : dir_enemy.cnt=558 : else : dir_enemy.cnt=651
								pos enx.cnt,230 : gcopy 4,354,dir_enemy.cnt,118,93 : gmode 2
							}
							else {
								if dir=1 : dir_enemy.cnt=558 : else : dir_enemy.cnt=651
								pos enx.cnt,230 : gcopy 4,fe3x.cnt,dir_enemy.cnt,118,93 : gmode 2
							}
						}
					}
					loop
					if BOSSD=1 {								;�{�X�@�x���t�F�S�[��
						if (berumode=0)&(beruchange=0) {
							if beruatk=0 : pos berux+mappos+berubure,100 : gmode 2 : gcopy 10,0,0,400,400
							if beruatk=1 {
								if beruatkp=0 : beruureatkf=0
								pos berux+mappos,100 : gmode 2 : gcopy 10,beruatkf,0,400,400
								if beruatkp=20 : beruatkf=400
								if beruatkp=40 : beruatkf=800 : beruhunt=1
								if beruatkp=200 : beruatkf=0 : beruhunt=0 : beruatk=0 : beruatkp=-1
								beruatkp+
							}
						}
						if (beruhp=3)&(beruchange=0) {
							if beruchp=0 : beruchaf=0 : beruchafy=0
							pos berux+mappos,100 : gmode 2 : gcopy 13,beruchaf,beruchafy,500,400
							if beruchp=40 : beruchaf=500
							if beruchp=50 : beruchaf=1000
							if beruchp=55 : beruchaf=0 : beruchafy=400
							if beruchp=65 {
								beruchange=1 : berumode=1 : beruchp=-1 : canmovL=280 : ready=200
								itonam2=1
								posses=0
								hitmog=0
								hitkro=0
								repeat enam*4
								kumoito.cnt=0
								ito.cnt=0
								loop
								repeat enam
								en.cnt=0 : ehit.cnt=0
								hitpira.cnt=0
								warmstun.cnt=0
								warm_on.cnt=1
								kumopos.cnt=0
								loop
								sammonC=300
							}
							beruchp+
						}
						if berumode=1 {
							pos berux+mappos+berubure,100 : gmode 2 : gcopy 13,500,400,500,400
						}
					}
					if (lustHP>=8)&(lustlimit=0)&(onaru=0)&(BOSSE=1) {;--------------------�A�X���f�E�X���[�h�ڍs
						lustT=4000
						gosub *hitoff : hitacid=0 : lustatari=0 : stunoff=0
						buffer 9 : picload "filterd.bmp"
						buffer 5 : picload "roomblack.bmp" : gsel 0
						color 255,255,255 : boxf 0,0,800,600 : redraw 1 : redraw 0
						wait 300
						eqhit=0 : equipatk=0 : equipstun=50 : equipA=0 : stun=0 : lustmode=0
						now_equip=0 : item_used=101 : item_del=1 : gosub *useitems : gosub *useitem : item_used=0
						lust_on=0 : acid1=0 : acid2=0 : acid3=0 : lustact=0 : Eball3x=-600 : lustderu=0 : lustkie=0 : lustatk=0 : canmovR=690 : canmovL=-60
						if cx>300 : Eballd*=-1
						if dir=0 : evedir=2 : else : evedir=3
						filter=255
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy evedir,0,256,185,256
						pos 0,0 : gmode 3,,,filter : gcopy 9,0,0,800,600 : redraw 1
						if filter=0 : break
						filter-=5
						await 1
						loop
						buffer 9 : picload "filtera.bmp" : gsel 0
						wait 300
						lustderup=0 : derur=0 : derua=500 : lustchange=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy evedir,0,256,185,256
						if derua>0{
				 		color 0,0,0 : pos cos(pi*derur/360)*derua+300.0,sin(pi*derur/360)*derua+100.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(pi/3))*derua+300.0,sin((pi*derur/360)+(pi/3))*derua+100.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(2*pi/3))*derua+300.0,sin((pi*derur/360)+(2*pi/3))*derua+100.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+pi)*derua+300.0,sin((pi*derur/360)+pi)*derua+100.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(4*pi/3))*derua+300.0,sin((pi*derur/360)+(4*pi/3))*derua+100.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(5*pi/3))*derua+300.0,sin((pi*derur/360)+(5*pi/3))*derua+100.0 : gmode 4,,,160 : gcopy 15,800,135,200,200 : color 255,255,255
						}
						redraw 1
						if lustderup=30 : lustderup=-1 : derur=0 : derua=500 : lustchange+
				 		lustderup+
				 		derur -= 20
				 		if derua>0 : derua-=20
				 		await 1
				 		if lustchange>=3 : break
				 		loop
						lustzoom=40
						buffer 100,800,600
						repeat
							gsel 100
							gzoom lustzoom,500,17,0,0,700,500,1
							gsel 0
							redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos (800-lustzoom)/2,0 : gmode 2 : gcopy 100,0,0,lustzoom,500
							pos cx,cy : gmode 2 : gcopy evedir,0,256,185,256 : redraw 1
							if lustzoom=700 : break
							lustzoom+=110
						loop
						wait 300
						lustlimit=1 : muteki=1
					}
					if (lustlimit=1)&(BOSSE=1) {;--------�{�C�A�X���f�E�X
						faceoff=1
						pos 50,0 : gmode 2 : gcopy 17,0,0,700,500
					}
					;---------------------------------�q�b�g����
					hitwarmsam=0
					repeat enam
					hitwarmsam+=hitwarm.cnt
					loop
					hitpirasam=0
					repeat enam
					hitpirasam+=hitpira.cnt
					loop
					hitkutisam=0
					repeat enam
					hitkutisam+=hitkuti.cnt
					loop
					hitdogsam=0
					repeat enam
					hitdogsam+=hitdog.cnt
					loop
					hitmamasam=0
					repeat enam
					hitmamasam+=hitmama.cnt
					loop
					hitmama2sam=0
					repeat enam
					hitmama2sam+=hitmama2.cnt
					loop
					hitjairosam=0
					repeat enam
					hitjairosam+=hitjairo.cnt
					loop
					hitsizukusam=0
					repeat 5
					hitsizukusam+=hitsizuku.cnt
					loop
					poscubesam=0
					repeat 5
					poscubesam+=poscube.cnt
					loop
					hitleasballsam=0
					repeat enam
					hitleasballsam+=hitleasball.cnt
					loop
					hitleasneedlesam=0
					repeat enam
					hitleasneedlesam+=hitleasneedle.cnt
					loop
													;--------------�t�F�C�^���e�B
					if mitana=1 : pos cx,cy : gcopy 22,925,512,185,256 : gmode 2 : goto *cantmov
					if (map=111)&(sclp<=280){;--------------�T�C�R���X�e�[�L
						muteki=1 : mutekiT=0 : throw=0 : life=0 : alert=0 : rusimode=0 : faceoff=1
						restart=0
						repeat enam
						ehit.cnt=0
						loop
						stun=1 : sclob=0 
						if deadpat=0 : deadx=0 : dead2x=0 : wirex=-200
						deadpat+
						if deadpat<3 : pos wirex,0 : gmode 2 : gcopy 38,0,0,200,600 : gmode 2
						if deadpat>=3 : pos wirex,0 : gmode 2 : gcopy 38,200,0,200,600 : gmode 2
						if deadpat>=345 : pos cx-93,200 : gcopy 53,dead2x,256,370,256 : gmode 2
						if deadpat>=3 : pos cx,200 : gcopy 53,deadx,0,185,256 : gmode 2
						if deadpat<3 : pos cx,200 : gcopy 2,0,256,185,256 : gmode 2
						if deadpat<=8 : wirex+=100
						if deadpat=300 : deadx=185
						if deadpat=320 : deadx=370
						if deadpat=330 : deadx=555
						if deadpat=335 : deadx=740
						if deadpat=340 : deadx=925
						if deadpat=345 : deadx=1110
						if deadpat=365 : dead2x=370
						if deadpat=385 : dead2x=740
						if deadpat>=700 : deadwait=1
						goto *cantmov
					}
					if deadflame=1{;--------------�P�V�Y�~
						muteki=1 : mutekiT=0 : throw=0 : life=0 : alert=0 : rusimode=0 : faceoff=1
						restart=0
						repeat enam
						ehit.cnt=0
						loop
						stun=1 : sclob=0 
						if deadpat=0 : deadx=0 : deady=0
						deadpat+
						pos cx,200 : gcopy 52,deadx,0,185,256 : gmode 2
						if deadpat=200 : deadx=185
						if deadpat=210 : deadx=370
						if deadpat=220 : deadx=555
						if deadpat=230 : deadx=740
						if deadpat=240 : deadx=925
						if deadpat>=400 : deadwait=1
						goto *cantmov
					}
					if deadfreez=1{;--------------�X�Ђ�
						muteki=1 : mutekiT=0 : throw=0 : life=0 : alert=1 : rusimode=0 : faceoff=1
						restart=0
						pos cx,200 : gcopy 51,0,0,185,256 : gmode 2
						repeat enam
						ehit.cnt=0
						loop
						stun=1 : sclob=0 
						if rusi_on=0 {
							deadpat+
							if deadpat>=200 : deadwait=1
						}
						else {
							if ((rusidir=0)&(rusix+30<cx+113)&(rusix+150>cx+83))|((rusidir=1)&(rusix+80<cx+113)&(rusix+200>cx+83)){
								dead=27 : gosub *event_dead
							}
						}
						goto *cantmov
					}
					if rusi_tsyoku3_hit=1{;--------------�u�`����
						muteki=1 : mutekiT=0 : throw=0 : life=0 : alert=1 : faceoff=1 : rusi_tpat=13
						restart=0
						pos rusitrx+100-62,200 : gcopy 29,370,256,185,256 : gmode 2
						repeat enam
						ehit.cnt=0
						loop
						stun=1 : sclob=0 
						deadpat+
						if deadpat>=200 : deadwait=1
						goto *cantmov
					}
					if deadslaim=1{;--------------�Ђ����荞�܂��
						muteki=1 : mutekiT=0 : throw=0 : life=0
						restart=0
						repeat enam
						ehit.cnt=0
						loop
						stun=1 : sclob=0 
						if deadpat=0 : deadx=0 : deady=0
						deadpat+
						pos cx,250 : gcopy 17,deadx,deady,185,256 : gmode 2
						if deadpat=10 : deadx=185
						if deadpat=20 : deadx=370
						if deadpat=30 : deadx=555
						if deadpat=40 : deadx=740
						if deadpat=50 : deadx=925
						if deadpat=60 : deadx=0 : deady=256
						if deadpat>=100 : deadwait=1
						goto *cantmov
					}
					if (life<=25)&(hitmamasam>0)&(BOSSF=0) {			;�}�}�@�[�[�[�E�[�E�E�E�[
						muteki=1 : mutekiT=0 : throw=0 : life=0
						restart=0
						repeat enam
						ehit.cnt=0
						loop
						stun=1 : sclob=0 
						deadpat+
						pos cx,cy : gcopy 8,deadx,0,185,256 : gmode 2
						if deadpat=10 : deadx=185
						if deadpat=30 : deadx=370
						if deadpat=40 : mamadead=0 : mamadead=2
						if deadpat>=40 : deadwait=1
						goto *cantmov
					}
					if ((life<=30)&(hitjairosam>0))|((rusi_tatk_v_hit=1)&(life<=45)){;�c���f
						life=0  : faceoff=1 : muteki=1 : mutekiT=0 : sclob=0
						if deadpat=0{
							restart=0 : dcou=0 : dim deathfx,6 : dim deathf2x,6 : dim deathp,6
							dcou=0 : gkr=0 : zureA=0 : zureB=0 : zureC=0
							deathfx=0,185,370,555,740,925,925
							deathf2x=0,185,370,555,740,925
							deathp=150,155,205,215,225,700
						}
						if dir=0 {
							if dcou>=2 : pos  cx,cy+40 : gmode 2 : gcopy 50,740,1024,185,256
							pos  cx+zureA,cy+zureC : gmode 2 : gcopy 50,deathfx.dcou,0,185,256
							pos  cx+1+zureB,cy+zureC : gmode 2 : gcopy 50,deathf2x.dcou,256,185,256
							if (deadpat=deathp.dcou)&(dcou<5) : dcou+
							if deadpat=150 : zureC=20
							if deadpat=155 : zureC=40
							if deadpat=205 : zureA=-80 : zureB=80
						}
						if dir=1 {
							if dcou>=2 : pos  cx,cy+40: gmode 2 : gcopy 50,740,1024,185,256
							pos  cx+1+zureA,cy+zureC : gmode 2 : gcopy 50,deathfx.dcou,512,185,256
							pos  cx+zureB,cy+zureC : gmode 2 : gcopy 50,deathf2x.dcou,768,185,256
							if (deadpat=deathp.dcou)&(dcou<5) : dcou+
							if deadpat=150 : zureC=20
							if deadpat=155 : zureC=40
							if deadpat=205 : zureA=80 : zureB=-80
						}
						if deadpat=500 : deadwait=1
						deadpat+
						goto *cantmov
					}
					if (rusi_tatk_h_hit=1)&(life<=20){;�΂ߗ��f
						life=0  : faceoff=1 : muteki=1 : mutekiT=0 : sclob=0
						if deadpat=0{
							restart=0 : dcou=0 : dim deathfx,4 : dim deathp,4
							dcou=0 : gkr=0 : zureD=0.0 : zureE=0.0 : zureF=0.0
							deathfx=0,185,370,555
							deathp=400,410,420,430
						}
						if dir=0 {
							if deadpat<=310 : pos  cx+zureD,cy+zureE+zureF : gmode 2 : gcopy 25,0,256,185,256
							pos  cx,cy : gmode 2 : gcopy 25,deathfx.dcou,0,185,256
							if deadpat>310 : pos  cx+zureD,cy+20: gmode 2 : gcopy 25,185,256,185,256
							if (deadpat>=200)&(deadpat<300) : zureD-=0.2 : zureE+=0.3
							if (deadpat>=300)&(deadpat<310) : zureF+=7.0
							if (deadpat=deathp.dcou)&(dcou<3) : dcou+
						}
						if dir=1 {
							if deadpat<=310 : pos  cx+zureD,cy+zureE+zureF : gmode 2 : gcopy 25,0,768,185,256
							pos  cx,cy : gmode 2 : gcopy 25,deathfx.dcou,512,185,256
							if deadpat>310 : pos  cx+zureD,cy+20: gmode 2 : gcopy 25,185,768,185,256
							if (deadpat>=200)&(deadpat<300) : zureD+=0.2 : zureE+=0.3
							if (deadpat>=300)&(deadpat<310) : zureF+=7.0
							if (deadpat=deathp.dcou)&(dcou<3) : dcou+
						}
						if deadpat=600 : deadwait=1
						deadpat+
						goto *cantmov
					}
					if (life<=16)&(EballhitA=1) {	;��������
						life=0  : faceoff=1 : muteki=1 : mutekiT=0
						stun=1
						deadpat+
						if deadpat=1 : deadx=0 : dead2x=0 : dead3x=0
						pos cx,cy : gmode 2 : gcopy 21,dead2x,768,185,256 : gmode 2
						if deadpat<130 : pos cx,cy : gmode 2 : gcopy 21,dead3x,256,185,256
						if deadpat<100 : pos cx,cy : gmode 2 : gcopy 21,deadx,0,185,256
						if deadpat=50 : deadx=185
						if deadpat=60 : deadx=370 
						if deadpat=70 : deadx=555 : dead3x=185
						if deadpat=80 : deadx=740 : dead3x=370
						if deadpat=90 : deadx=925 : dead3x=555
						if deadpat=100 : dead3x=740
						if deadpat=110 : dead3x=925
						if deadpat=220 : dead2x=185
						if deadpat=230 : dead2x=370
						if deadpat=240 : dead2x=555
						if deadpat>=400 : deadwait=1
						goto *cantmov
					}
					if (lustlasthit=1) {	;����������
						lustlasthit=0
						dead=22 : gosub *event_dead
					}
					if (life<=25)&(lustatari=1)&(lustdeath=5) {	;�G��
						lustatari=0
						dead=20 : gosub *event_dead
					}
					if (life<=25)&(lustatari=1)&(lustdeath=6) {	;�G��2
						lustatari=0
						dead=21 : gosub *event_dead
					}
					
					if (life<=20)&(bktype2d=1) {			;�f��
						life=0 : muteki=1 : mutekiT=0 : throw=0
						repeat enam
						ehit.cnt=0
						loop
						bkemu2hit.cnt=0
						stun=1 : sclob=0 
						deadpat+
						if deadpat=1 : deadx=0
						pos cx,cy : gcopy 17,deadx,0,185,256 : gmode 2
						if deadpat=20 : deadx=185
						if deadpat=30 : deadx=370 
						if deadpat=40 : deadx=555 : down=1
						if deadpat=50 : deadx=740
						if deadpat=60 : deadx=925
						if deadpat>=140 : deadwait=1
						goto *cantmov
					}
					if (life<=25)&(beruhit=2) {			;���s
						life=0 : faceoff=1 : muteki=1 : mutekiT=0 : throw=0
						repeat enam
						ehit.cnt=0
						kuthill.cnt=0
						loop
						poshill=0
						stun=1 : sclob=0 
						deadpat+
						if deadpat=1 : deadx=0 : deady=0
						pos cx,cy : gcopy 21,deadx,deady,185,256 : gmode 2
						if deadpat=20 : deadx=185 : deady=0
						if deadpat=40 : deadx=370 : deady=0
						if deadpat=50 : deadx=555 : deady=0
						if deadpat=60 : deadx=740 : deady=0
						if deadpat=70 : deadx=0 : deady=256
						if deadpat=80 : deadx=185 : deady=256
						if deadpat=90 : deadx=370 : deady=256
						if deadpat=100 : deadx=555 : deady=256
						if deadpat=200 : deadx=740 : deady=256
						if deadpat=205 : deadx=0 : deady=512
						if deadpat>=400 : deadwait=1
						goto *cantmov
					}
					if (life<=0)&(posbag>0)&(map=48) {
						if deadwait=0 {
						redraw 0 : stun=1 : muteki=1 : mutekiT=0 : sclob=0 : throw=0 : faceoff=1
						repeat enam
						ehit.cnt=1
						loop
						pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E\n���₠�����������������I"
							redfeed+
							if redfeed=200 : filterR=50
							if redfeed=220 : filterR=100
							if redfeed=240 : filterR=150
							if redfeed=260 : filterR=200
							if redfeed=280 : filterR=250
							if redfeed=400 {
								deadwait=1 : deadx=740 : deadpat=0 : deadpat2=0
								repeat enam
								kuthill.cnt=0
								loop
							}
							goto *cantmov
						}
						else {
							muteki=1 : mutekiT=0
							repeat enam
						 	ehit.cnt=1
						 	loop
							hitmog=0 : stun=1 : sclob=0 : filterR=0 : faceoff=1 : redfeed=0
							pos cx,cy : gmode 2 : gcopy 22,deadx,1280,185,256
							if (deadpat2>0)&(deadpat2<=400) {
								pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
								font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������������������������I�I�I"
							}
							if (deadpat2>400)&(deadpat2<=800) {
								pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
								font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�������I�I�I\n�₾�I����Ȃ̂₾���I\n�N�������E�E�E\n���������������������I�I�I�I"
							}
							if (deadpat2>800)&(deadpat2<=1000) {
								pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
								font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ������I�I�I�̂̒��E�E�E�E\n�̂̒��ɓ����āE�E�E\n�Q�{�b�I�S�z�b�I�I�I"
							}
							if (deadpat2>1000)&(deadpat2<=1500) {
								pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
								font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�`�`�`�`�`�`�`�`�I�I�I"
							}
							if deadpat=50 : deadx=925
							if deadpat=65 : deadx=740 : deadpat=-1
							deadpat+
							deadpat2+
							gosub *yarinaoshi : restart=0 : gkr=0 
							goto *cantmov
						}
					}
					if (life<=0)&(poshill>=20) { ;�q����
						if deadwait=0 {
						redraw 0 : stun=1 : muteki=1 : mutekiT=0 : sclob=0 : throw=0 : faceoff=1
						repeat enam
						ehit.cnt=1
						loop
						pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						if stage!=6 : pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						if stage=6 : pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E\n���₠�����������������I"
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E\n���₠�����������������I"
						
							redfeed+
							if redfeed=200 : filterR=50
							if redfeed=220 : filterR=100
							if redfeed=240 : filterR=150
							if redfeed=260 : filterR=200
							if redfeed=280 : filterR=250
							if redfeed=400 {
								if beruhiru=1{
									poshill=0 : dead=26 : gosub *event_dead
								}
								else{
									deadwait=1 : deadx=555 : deadpat=0
									repeat enam
									kuthill.cnt=0
									loop
								}
							}
							goto *cantmov
						}
						else {
							muteki=1 : mutekiT=0
							repeat enam
						 	ehit.cnt=1
						 	loop
							hitmog=0 : stun=1 : sclob=0 : filterR=0 : faceoff=1 : redfeed=0
							if stage!=6{
							pos cx,cy : gmode 2 : gcopy 22,deadx,512,185,256
							if deadpat=50 : deadx=740
							if deadpat=65 : deadx=555 : deadpat=-1
							}
							if stage=6{
								pos cx,cy : gmode 2 : gcopy 8,deadx,0,185,256
								if deadpat=50 : deadx=740
								if deadpat=65 : deadx=555 : deadpat=-1
							}
							deadpat+
							gosub *yarinaoshi : restart=0 : gkr=0 
							goto *cantmov
						}
					}
					if (life<=0)&(mapwater=1) {			;�����Ŏ��S
						muteki=1 : mutekiT=0 : throw=0
						repeat enam
						ehit.cnt=0
						loop
						stun=1 : sclob=0 
						deadpat+
						if deadpat=1 : deady=0
						pos cx,cy+deady : gcopy 22,0,512,185,256 : gmode 2
						if deadpat=40 : deady=-4
						if deadpat=80 : deady=-6
						if deadpat=110 : deady=-8
						if deadpat>=140 : deadwait=1
						goto *cantmov
					}

					if (life<=0)&(BOSSB=1)&(wrapos>0) {			;�T�^���Ŏ��S
						muteki=1 : mutekiT=0 : hitA=0 : hitB=0 : hitC=0 : hitD=0 : stun=1 : sclob=0 : faceoff=1
						deadpat+
						if wradir =0 : deady=900 : else : deady=1350
						if wrapos=1 {
							pos wraplax,6 : gcopy 10,deadx,deady,250,450 : gmode 2
							if deadpat=20 : deadx=250 : deadwait=1
						}
						if wrapos=2 {
							if deadpat=1 : deadx=500
							pos wraplax,6 : gcopy 10,deadx,deady,250,450 : gmode 2
							if deadpat=200 : deadx=750
							if deadpat=300 : deadx=1000 : deadwait=1
						}
						goto *cantmov
					}
					if (life<=0)&(BOSSG=1)&(rusipos=2) {			;���V�t�F���݂�グ
						dead=29 : gosub *event_dead
					}
					if (life<=0)&(BOSSH=1)&(poscubesam>0)&(leashp<=2) {			;�l�̂̕s�v�c�W
						life=0  : faceoff=1 : muteki=1 : mutekiT=0 : sclob=0
						if (leas_mpat=5)|(leas_mpat=0)|(leas_mpat=4) {
							leas_mpat=1 : leassp=0
						}
						if (leas_mpat=7)|(leas_mpat=2) : leas_mpat=3 : leassp=0 : leas_m3f=0 : leas_m3fx=120
						if leas_mpat=8 : leas_mpat=13			
						if deadpat=0{
							nikuhen=1
							restart=0 : dcou=0 : dim deathp,8 : dim zurep,8
							dcou=0 : gkr=0 : zureA=0 : deadp=0 : deadfy=0
							deadfx=555
							deathp=-4,-3,-2,-1,1,2,3,4
							leasgrav=0
							repeat enam
							leasneedle.cnt=0
							leasball.cnt=0
							leas_rayA=0
							leas_rayB=0
							loop
							repeat 2
							leascube.cnt=0
							loop
						}
							if deadpat<=300 {
								pos cx-30,160+zureA : gmode 2 : gcopy 15,0,0,210,320
								pos cx,200+zureA : gmode 2 : gcopy 2,0,256,185,256
								if deadpat<=100 : zureA-
							}
							if (deadpat>300)&(deadpat<=380){
								pos cx-30,160+zureA : gmode 2 : gcopy 15,420,0,210,320
								pos cx,200+zureA : gmode 2 : gcopy 23,0,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,185,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,370,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,555,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,370,256,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,555,256,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,0,512,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,185,512,185,256
							}
							if (deadpat>380)&(deadpat<=385){
								pos cx,200+zureA : gmode 2 : gcopy 23,0,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,185,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,370,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,555,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,370,256,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,555,256,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,0,512,185,256
								pos cx-30,160+zureA : gmode 2 : gcopy 15,420,320,210,320
								pos cx,200+zureA : gmode 2 : gcopy 23,185,512,185,256
								
							}
							if (deadpat>385)&(deadpat<=485){
								pos cx,200+zureA : gmode 2 : gcopy 23,0,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,185,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,370,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,555,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,370,256,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,555,256,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,0,512,185,256
								pos cx-30,160+zureA : gmode 2 : gcopy 15,420,0,210,320
								pos cx,200+zureA : gmode 2 : gcopy 23,185,512,185,256
								pos cx-30,160+zureA : gmode 2 : gcopy 15,420,0,210,320
								
							}
							if (deadpat>485)&(deadpat<=585){
								pos cx,200+zureA : gmode 2 : gcopy 23,0,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,185,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,370,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,555,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,370,256,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,555,256,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,0,512,185,256
								pos cx,200+zureA : gmode 2 : gcopy 23,185,512,185,256
								
							}
							if (deadpat>585)&(deadpat<=605) {
								pos cx+zurep.0,200+zureA-zurep.0/2 : gmode 2 : gcopy 23,0,0,185,256
								pos cx+zurep.1,200+zureA-zurep.1 : gmode 2 : gcopy 23,185,0,185,256
								pos cx+zurep.2,200+zureA-zurep.2 : gmode 2 : gcopy 23,370,0,185,256
								pos cx+zurep.3,200+zureA-zurep.3 : gmode 2 : gcopy 23,555,0,185,256
								pos cx+zurep.4,200+zureA-zurep.4 : gmode 2 : gcopy 23,370,256,185,256
								pos cx+zurep.5,200+zureA-zurep.5 : gmode 2 : gcopy 23,555,256,185,256
								pos cx+zurep.6,200+zureA-zurep.6 : gmode 2 : gcopy 23,0,512,185,256
								pos cx+zurep.7,200+zureA-zurep.7 : gmode 2 : gcopy 23,185,512,185,256
								repeat 8
								zurep.cnt+=deathp.cnt
								loop
							}
							if (deadpat>605)&(deadpat<=1000) {
								pos cx+zurep.0,200+zureA-zurep.0 : gmode 2 : gcopy 23,0,0,185,256
								pos cx+zurep.1,200+zureA-zurep.1 : gmode 2 : gcopy 23,185,0,185,256
								pos cx+zurep.2,200+zureA-zurep.2 : gmode 2 : gcopy 23,370,0,185,256
								pos cx+zurep.3,200+zureA-zurep.3 : gmode 2 : gcopy 23,deadfx,deadfy,185,256
								pos cx+zurep.4,200+zureA-zurep.4 : gmode 2 : gcopy 23,370,256,185,256
								pos cx+zurep.5,200+zureA-zurep.5 : gmode 2 : gcopy 23,555,256,185,256
								pos cx+zurep.6,200+zureA-zurep.6 : gmode 2 : gcopy 23,0,512,185,256
								pos cx+zurep.7,200+zureA-zurep.7 : gmode 2 : gcopy 23,185,512,185,256
								if deadp=20 : deadfx=0 : deadfy=256
								if deadp=25 : deadfx=185
								if deadp=30 : deadfx=555 : deadfy=0 : deadp=-1
								deadp+
							}
							if deadpat>1000 {
								pos cx+zurep.0,200+zureA-zurep.0 : gmode 2 : gcopy 23,0,0,185,256
								pos cx+zurep.1,200+zureA-zurep.1 : gmode 2 : gcopy 23,185,0,185,256
								pos cx+zurep.2,200+zureA-zurep.2 : gmode 2 : gcopy 23,370,0,185,256
								pos cx+zurep.3,200+zureA-zurep.3 : gmode 2 : gcopy 23,deadfx,deadfy,185,256
								pos cx+zurep.4,200+zureA-zurep.4 : gmode 2 : gcopy 23,370,256,185,256
								pos cx+zurep.5,200+zureA-zurep.5 : gmode 2 : gcopy 23,555,256,185,256
								pos cx+zurep.6,200+zureA-zurep.6 : gmode 2 : gcopy 23,0,512,185,256
								pos cx+zurep.7,200+zureA-zurep.7 : gmode 2 : gcopy 23,185,512,185,256
								if deadp=20 : deadfx=0 : deadfy=256
								if deadp=25 : deadfx=185
								if deadp=30 : deadfx=555 : deadfy=0 : deadp=-1
								deadp+
								deadwait=1
							}
						deadpat+
						goto *cantmov
					}
					if (life<=0)&(BOSSH=1)&(poscubesam>0)&(leashp>=3) {			;���[�X���ς�
						life=0  : faceoff=1 : muteki=1 : mutekiT=0 : sclob=0
						if (leas_mpat=5)|(leas_mpat=0)|(leas_mpat=4) {
							leas_mpat=1 : leassp=0
						}
						if (leas_mpat=7)|(leas_mpat=2) : leas_mpat=3 : leassp=0 : leas_m3f=0 : leas_m3fx=120
						if leas_mpat=8 : leas_mpat=13
						if deadpat=0{
							nikuhen=1
							restart=0 : dcou=0 : dim deathfx,6 : dim deathf2x,6 : dim deathp,6
							dcou=0 : gkr=0 : zureA=0 : deadp=0 : deadfy=256
							deadfx=0
							deathfx=0,185,370,0
							deathp=595,605,615,9000000
							repeat enam
							leasgrav=0
							leasneedle.cnt=0
							leasball.cnt=0
							leas_rayA=0
							leas_rayB=0
							loop
							repeat 2
							leascube.cnt=0
							loop
						}
							if deadpat<=300 {
								pos cx-30,160+zureA : gmode 2 : gcopy 15,0,0,210,320
								pos cx,200+zureA : gmode 2 : gcopy 2,0,256,185,256
								if deadpat<=100 : zureA-
							}
							if (deadpat>300)&(deadpat<=380){
								pos cx,200+zureA : gmode 2 : gcopy 21,0,0,185,256
								pos cx-30,160+zureA : gmode 2 : gcopy 15,210,0,210,320
								pos cx,200+zureA : gmode 2 : gcopy 21,555,0,185,256
								
							}
							if (deadpat>380)&(deadpat<=385){
								pos cx,200+zureA : gmode 2 : gcopy 21,0,0,185,256
								pos cx-30,160+zureA : gmode 2 : gcopy 15,210,320,210,320
								pos cx,200+zureA : gmode 2 : gcopy 21,555,0,185,256
								
							}
							if (deadpat>385)&(deadpat<=485){
								pos cx,200+zureA : gmode 2 : gcopy 21,0,0,185,256
								pos cx-30,160+zureA : gmode 2 : gcopy 15,210,0,210,320
								pos cx,200+zureA : gmode 2 : gcopy 21,555,0,185,256
								
							}
							if (deadpat>485)&(deadpat<=585){
								pos cx,200+zureA : gmode 2 : gcopy 21,0,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 21,555,0,185,256
								
							}
							if (deadpat>585)&(deadpat<=625) {
								pos cx,200+zureA : gmode 2 : gcopy 21,0,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 21,deathfx.dcou,deadfy,185,256
								if (deadpat=deathp.dcou)&(dcou<3) : dcou+
								if dcou=3 : deadfy=512
							}
							if (deadpat>625)&(deadpat<=1000) {
								pos cx,200+zureA : gmode 2 : gcopy 21,deadfx,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 21,deadfx,512,185,256
								if deadp=20 : deadfx=185
								if deadp=25 : deadfx=370
								if deadp=30 : deadfx=0 : deadp=-1
								deadp+
							}
							if deadpat>1000 {
								pos cx,200+zureA : gmode 2 : gcopy 21,deadfx,0,185,256
								pos cx,200+zureA : gmode 2 : gcopy 21,deadfx,512,185,256
								if deadp=20 : deadfx=185
								if deadp=25 : deadfx=370
								if deadp=30 : deadfx=0 : deadp=-1
								deadp+
								deadwait=1
							}
						deadpat+
						goto *cantmov
					}
					if (BOSSH=1)&(deathballhit=1) {			;���[�X�~�L�T�[
						life=0  : faceoff=1 : muteki=1 : mutekiT=0 : sclob=0
						if (leas_mpat=5)|(leas_mpat=0)|(leas_mpat=4) {
							leas_mpat=1 : leassp=0
						}
						if (leas_mpat=7)|(leas_mpat=2) : leas_mpat=3 : leassp=0 : leas_m3f=0 : leas_m3fx=120
						if leas_mpat=8 : leas_mpat=13
						if deadpat=0{
							restart=0 : dcou=0 : nikuhen=1
							dcou=0 : gkr=0 : zureA=0.0 : deadp=0 : deadfy=256 : zurep=0.0
							deadfx=320
							deathr=0.0 : deathr2=0.0 : deathsize=500 : deathsize2=450 : deathsp=0.0
							repeat enam
							leasgrav=0
							leasneedle.cnt=0
							leasball.cnt=0
							leas_rayA=0
							leas_rayB=0
							loop
							repeat 2
							leascube.cnt=0
							loop
						}
						if deadpat<=300{
							pos cx,cy+zureA : gmode 2 : gcopy 2,0,256,185,256
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,0,0,320,320
							if deadpat<=100 : zureA-
						}
						if (deadpat>300)&(deadpat<=350){
							pos cx,cy+zureA : gmode 2 : gcopy 8,740,768,185,256
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,0,0,320,320
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,320,0,deathsize,deathsize
						}
						if (deadpat>350)&(deadpat<=400){
							pos cx,cy+zureA : gmode 2 : gcopy 8,740,768,185,256
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,0,0,320,320
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,320,0,deathsize,deathsize
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,640,0,deathsize2,deathsize2
						}
						if (deadpat>400)&(deadpat<=560){
							pos cx,cy+zureA : gmode 2 : gcopy 8,740,768,185,256
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,0,0,320,320
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,320,deathr,deathsize,deathsize
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,640,deathr2,deathsize2,deathsize2
							deathsp+=0.01
							deathr+=deathsp
							deathr2-=deathsp
						}
						if (deadpat>560)&(deadpat<=580){
							pos cx,cy+zureA : gmode 2 : gcopy 8,740,768,185,256
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,0,0,320,320
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,320,deathr,deathsize,deathsize
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,640,deathr2,deathsize2,deathsize2
							deathr+=deathsp
							deathr2-=deathsp
							deathsize-=10
							deathsize2-=10
						}
						if (deadpat>568)&(deadpat<=850){
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,0,0,320,320
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,320,deathr,deathsize,deathsize
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,640,deathr2,deathsize,deathsize
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 29,deadfx,0,0,320,320
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 29,0,0,0,320,320
							if deadp=5 : deadfx=640
							if deadp=10 : deadfx=960
							if deadp=15 : deadfx=320 : deadp=-1
							deathr+=deathsp
							deathr2-=deathsp
							deadp+
						}
						if (deadpat>850)&(deadpat<=950){
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 15,630,0,0,320,320
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 29,deadfx,0,0,320,320
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 29,0,0,0,320,320
						}
						if (deadpat>950)&(deadpat<=960){
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 29,0,0,0,320,320
							zurep+=0.1
							zureA+=zurep*zurep
						}
						if (deadpat>960)&(deadpat<=980){
							pos cx+93,cy+128+zureA : gmode 2,320,320 : grotate 29,0,320,0,320,320
							zurep+=0.1
							zureA+=zurep*zurep
						}
						if (deadpat>980)&(deadpat<=985){
							pos cx+93,cy+128 : gmode 2,320,320 : grotate 29,320,320,0,320,320
						}
						if (deadpat>985)&(deadpat<=1185){
							pos cx+93-160-140,cy+128-160 : gmode 2 : gcopy 29,640,320,600,320
						}
						if deadpat>1185{
							pos cx+93-160-140,cy+128-160 : gmode 2 : gcopy 29,640,320,600,320
							deadwait=1
						}
						deadpat+
						goto *cantmov
					}
					if (BOSSH=1)&(gravhit=1) {			;���U
						life=0  : faceoff=1 : muteki=1 : mutekiT=0 : sclob=0
						if (leas_mpat=5)|(leas_mpat=0)|(leas_mpat=4) {
							leas_mpat=1 : leassp=0
						}
						if (leas_mpat=7)|(leas_mpat=2) : leas_mpat=3 : leassp=0 : leas_m3f=0 : leas_m3fx=120
						if leas_mpat=8 : leas_mpat=13
						if deadpat=0{
							restart=0 : dcou=0 : dcou2=0 : deadp=0 : nikuhen=1
							dim deathfx,190 : dim deathfy,190 : dim deathx,190 : dim deathy,190 : dim deathr,190 : dim deathfall,190 : dim deathsp,190 : dim deathup,190
							repeat 190
							deathx.cnt=0.0
							deathy.cnt=0.0
							deathr.cnt=0.0
							deathfx.cnt=0.0
							deathfy.cnt=0.0
							deathfall.cnt=0.0
							deathsp.cnt=0.0
							deathup.cnt=0.0
							loop
							repeat 190
							deathfx.cnt=dcou*30
							deathfy.cnt=dcou2*30
							deathsp.cnt=-10+rnd(20)
							deathup.cnt=-40+rnd(80)
							deathx.cnt=cx+rnd(155)
							deathy.cnt=220+rnd(150)
							deathr.cnt=0.01*rnd(200)
							dcou+
							if dcou=10 : dcou2+ : dcou=0
							loop
							dcou=0 : dcou2=0
							repeat 15
							deathx2.cnt=0.0
							deathy2.cnt=0.0
							deathr2.cnt=0.0
							deathfx2.cnt=0.0
							deathfy2.cnt=0.0
							deathfall2.cnt=0.0
							deathsp2.cnt=0.0
							deathup2.cnt=0.0
							loop
							repeat 15
							deathfx2.cnt=dcou*60
							deathfy2.cnt=570+(dcou2*60)
							deathsp2.cnt=-10+rnd(20)
							deathup2.cnt=-40+rnd(80)
							deathx2.cnt=cx+30+rnd(105)
							deathy2.cnt=240+rnd(130)
							deathr2.cnt=0.01*rnd(200)
							dcou+
							if dcou=5 : dcou2+ : dcou=0
							loop
							repeat enam
							leasgrav=0
							leasneedle.cnt=0
							leasball.cnt=0
							leas_rayA=0
							leas_rayB=0
							loop
							repeat 2
							leascube.cnt=0
							loop
						}
						if deadpat<=100{
							pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						}
						if (deadpat>100)&(deadpat<=400){
							if deadp<=1 : pos cx+120,cy+130: gmode 2,300,300 : grotate 27,0,256,0,400,400
							if (deadp>1)&(deadp<=3) : pos cx+120,cy+130 : gmode 2,300,300 : grotate 27,300,256,0,500,500
							if (deadp>3)&(deadp<=5) : pos cx+120,cy+130 : gmode 2,300,300 : grotate 27,600,256,0,600,600
							if deadp>5 : pos cx-340,320 : gmode 2 : gcopy 27,0,556,900,300
							pos cx,cy : gmode 2 : gcopy 27,0,0,185,256
							repeat 190
							pos deathx.cnt,deathy.cnt : gmode 2,30,30 : grotate 25,deathfx.cnt,deathfy.cnt,deathr.cnt,30,30
							loop
							repeat 15
							pos deathx2.cnt,deathy2.cnt : gmode 2,60,60 : grotate 25,deathfx2.cnt,deathfy2.cnt,deathr2.cnt,60,60
							loop
							repeat 15
							if deathfall2.cnt<9 : deathfall2.cnt+=0.1
							if deathy2.cnt<450 {
								deathx2.cnt+=deathsp2.cnt
								deathy2.cnt+=deathup2.cnt+(deathfall2.cnt*deathfall2.cnt)
							}
							loop
							repeat 190
							if deathfall.cnt<9 : deathfall.cnt+=0.1
							if deathy.cnt<450 {
								deathx.cnt+=deathsp.cnt
								deathy.cnt+=deathup.cnt+(deathfall.cnt*deathfall.cnt)
							}
							loop
							deadp+
						}
						if deadpat>400{
							pos cx-340,320 : gmode 2 : gcopy 27,0,556,900,300
							pos cx,cy : gmode 2 : gcopy 27,0,0,185,256
							repeat 190
							pos deathx.cnt,deathy.cnt : gmode 2,30,30 : grotate 25,deathfx.cnt,deathfy.cnt,deathr.cnt,30,30
							loop
							repeat 15
							pos deathx2.cnt,deathy2.cnt : gmode 2,60,60 : grotate 25,deathfx2.cnt,deathfy2.cnt,deathr2.cnt,60,60
							loop
							deadwait=1
						}
						deadpat+
						goto *cantmov
					}
					if life<=0 {			;���S
						muteki=1 : mutekiT=0 : throw=0
						repeat enam
						ehit.cnt=0
						loop
						stun=1 : sclob=0 
						deadpat+
						if (stone=1)&(deadpat=1) : dead2x=0 : deady=0
						if (stone=2)&(deadpat=1) : dead2x=555 : deady=0
						if (stone=3)&(deadpat=1) : dead2x=0 : deady=256
						pos cx,cy : gcopy 8,deadx,0,185,256 : gmode 2
						if stone>=1 : pos cx,cy : gcopy 27,dead2x,deady,185,256 : gmode 2
						if deadpat=10 : deadx=185
						if deadpat=30 : deadx=370 : deadwait=1
						if (stone=1) {
							if deadpat=10 : dead2x=185
							if deadpat=30 : dead2x=370
						}
						if (stone=2){
							if deadpat=10 : dead2x=740
							if deadpat=30 : dead2x=925
						}
						if (stone=3){
							if deadpat=10 : dead2x=185 : deady=256
							if deadpat=30 : dead2x=370 : deady=256
						}
						goto *cantmov
					}
					if posdead=1 {
						if deadwait=0 {
						redraw 0 
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E\n���₠�����������������I"
							redfeed+
							if redfeed=200 : filterR=50
							if redfeed=220 : filterR=100
							if redfeed=240 : filterR=150
							if redfeed=260 : filterR=200
							if redfeed=280 : filterR=250
							if redfeed=600 : deadwait=1
							gosub *yarinaoshi : restart=0 : gkr=0 
						}
						else {
							muteki=1 : mutekiT=0
							repeat enam
						 	ehit.cnt=1
						 	loop
							hitmog=0 : stun=1 : sclob=0 : filterR=0 : faceoff=1 : redfeed=0
							pos cx+120,370 : gmode 2 : gcopy 4,fe1x,93,118,93
							pos cx,cy+20 : gmode 2 : gcopy 8,555,0,185,256 : gmode 2		
							pos cx+20,363 : gmode 2 : gcopy 4,fe1x,0,118,93 : gmode 2
							pos cx-40,383 : gmode 2 : gcopy 4,fe1x,0,118,93 : gmode 2
							pos cx+115,400 : gmode 2 : gcopy 4,fe1x,93,118,93 : gmode 2
							pos 0,0 : gmode 3,,,230 : gcopy 9,0,0,800,600
							gosub *yarinaoshi : restart=0 : gkr=0 
							goto *cantmov
						}
					}
					;-----------------------�_���[�W�֌W
					if onaru=1 {;���ԁ@�A�X���f�E�X
						eqhit=0 : equipatk=0 : equipstun=50 : eqatkp=0
						pos cx,cy : gmode 2 : gcopy 10,onafx,onafy,185,256
						if onap=10 : onafx=185 : onaona=0
						if onap=20 : onafx=370
						if onap=30 : onafx=555
						if onap=40 : onafx=740
						if onap=70 : onafx=925 : onadama+
						if onap=90 : onafx=740 : onap=39+rnd(10) : onaona+
						if onaona>=20 : onap=91 : onafx=0 : onafy=256 : onaring=1 : onaona=1
						if onap=100 : onafx=185
						if onap=110 : onafx=370
						if onap=140 : onafx=555 : onadama+
						if onap=160 : onafx=370 : onap=109+rnd(10)
						onap+
						if (onadama>=1)&(onap>=39) {
							life-=2 : onadama=0
							if life<=0 : life=1
						}
						stick onakey
						if keytime>=130 {
							keytime=-100+rnd(100)
							keyrnd=rnd(4)
							if keyrnd=0 : keydir=1 : yajirux=cx-60 : yajiruy=cy+56
							if keyrnd=1 : keydir=4 : yajirux=cx+165 : yajiruy=cy+56
							if keyrnd=2 : keydir=2 : yajirux=cx+53 : yajiruy=cy-80
							if keyrnd=3 : keydir=8 : yajirux=cx+53 : yajiruy=cy+160
						}
						keytime+
						if (keydir=1)&(onakey=1) : onakaihou+
						if (keydir=2)&(onakey=2) : onakaihou+
						if (keydir=4)&(onakey=4) : onakaihou+
						if (keydir=8)&(onakey=8) : onakaihou+
						if onakaihou>=onakaihoup {
							onap=0 : onaru=2
						}
						goto *cantmov
					}
					if onaru=2{
						if onaring=0 : pos cx,cy : gmode 2 : gcopy 10,740,256,185,256
						if onaring=1 : pos cx,cy : gmode 2 : gcopy 10,925,256,185,256
						if onap=13 : stun=0 : onap=-1 : onafx=0 : onafy=0 : onadama=0 : lustmode=0 : onakaihou=0 : onaru=0 : onaona=0 : onaring=0
						onap+
						goto *cantmov
					}
					repeat enam
					if hitbag.cnt=1{;���V������
						posbagx.cnt=63+rnd(40)
						posbagy.cnt=50+rnd(155)
						posbagdy.cnt=140+rnd(100)
						posbagdwx.cnt=30+rnd(90)
						posbagdwy.cnt=170+rnd(50)
						hitbag.cnt=0 : kutbag.cnt=1 : posbag+
					}
					loop
					repeat enam
					if hithill.cnt=1{;�q��������
						poshillx.cnt=63+rnd(40)
						poshilly.cnt=50+rnd(155)
						poshilldy.cnt=140+rnd(100)
						poshilldwx.cnt=30+rnd(90)
						poshilldwy.cnt=170+rnd(50)
						hithill.cnt=0 : kuthill.cnt=1
					}
					loop
					repeat enam
					if (etype.cnt=8)&(enx.cnt+53<cx+113)&(enx.cnt+53>cx+83)&(babble_on.cnt=1) {;�o�u���Ƃ��
					if babbled.cnt>=10 : life-=1 : babbled.cnt=-1
						babbled.cnt+
					}
					loop
					if posbag>0 {;���V�_���[�W
						fatalst=1 : musimusi=1
						posbagd+=posbag
						if posbagd>2600 : life-=2 : posbagd=0
					}
					if poshill>0 {;�q���_���[�W
						fatalst=1
						poshilld+=poshill
						if poshilld>2000 : life-=2 : poshilld=0
					}
					if poshill<=0 {
						repeat enam
						kuthill.cnt=0
						loop
					}
					if posses=1 {								;�G�����܂�p�^�[��
						down=0 :gosub *patreset : sclob=0 : patd=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : throw=0 : stun=1
						if keiren>=90 : bure=3 : keiren=0
						relept=0
						gmode 2
						kumoitosum=0
						repeat enam*4
						kumoitosum+=kumoito.cnt
						loop
						if kumoitosum=0 {
							if hitmog<=2 : pos cx,cy-bure : gmode 2 : gcopy 2,185,512,185,256
							if hitmog>=3 : pos cx,cy-bure : gmode 2 : gcopy 2,0,512,185,256 
						}
						if hitsla=1 : pos cx,cy-bure : gmode 2 : gcopy 2,185,512,185,256 : pos cx,cy+173 : gcopy 4,590,372,118,93 : relept=30
						if kumoitosum=1 : pos cx,cy-bure : gmode 2 : gcopy 2,185,512,185,256 : gcopy 8,925,768,185,256
						if kumoitosum>=2 : pos cx,cy-bure : gmode 2 : gcopy 2,370,512,185,256 : gcopy 8,925,1024,185,256
						if hitmog>=1 : pos cx-26,cy+173 : gmode 2 : gcopy 4,354,0,118,93 : poscount+ : relept=15
						if hitmog>=2 : pos cx+111,cy+157 : gmode 2 : gcopy 4,354,93,118,93 : poscount+ : relept=20
						if hitmog>=3 : pos cx+74,cy+82 : gmode 2 : gcopy 4,472,93,118,93 : poscount+ : relept=30
						if hitmog>=4 : pos cx+26,cy+60 : gmode 2 : gcopy 4,472,0,118,93 : posdead=1 : goto *cantmov
						bure=0 : keiren+
						poscount+=hitkro*1 : relept+=10*hitcro
						if beruhit=1 : poscount+=2
						repeat enam*4
						if kumoito.cnt=1 : relept+=10
						loop
						repeat enam
						if hitwarm.cnt=1 : poscount+
						if hitpira.cnt=1 : poscount+
						if kumopos.cnt=1 : poscount+
						if hitmama.cnt=1 : poscount+
						if hitdog.cnt=1 : poscount+
						if hitjairo.cnt=1 : poscount+
						if hitmama2.cnt=1 : poscount+
						loop
						repeat enam
						if hittrap.cnt=1 : relept+=15
						loop
						if poscount>200 : life-=10 : poscount=0
						if relez=1 : recomand=1
						if relez=0 : recomand=0
						getkey relez,90
						if (recomand=0)&(relez=1) : release+
						if release>relept {
							posses=0 : hitmog=0 : hitkro=0 : hitsla=0
							repeat enam
							if hittrap.cnt=1 : slow=1 : slowT=500
							if hittrap.cnt>=1 : trap.cnt=0 : hittrap.cnt=0
							loop							
							muteki=1 : release=0 : stun=0 : esungap=24
							if stmn=500
							repeat enam
							if ehit.cnt=1 : estun.cnt=30+rnd(30)
							loop
							repeat enam
							ehit.cnt=0
							loop
							repeat enam*4
							 kumoito.cnt=0
							 ito.cnt=0
							loop
						}
					 	goto *cantmov
						
					}
					if (wrapos>0)&(life>0) {								;�T�^�����܂�p�^�[��
						down=0 :gosub *patreset : sclob=0 : patd=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : stun=1
						if keiren>=90 : bure=3 : keiren=0
						relept=0
						gmode 2
						if wrapos=1 {
							pos wraplax+bure,6 : gmode 2 : gcopy 10,500,Bfe2y,250,450 : poscount+ : relept=20
							bure=0 : keiren+
							if poscount>100 : life-=10 : poscount=0
						}
						if wrapos=2 {
							pos wraplax+bure,6 : gmode 2 : gcopy 10,1250,Bfe2y,250,450 : poscount+ : relept=20
							bure=0 : keiren+
							if poscount>100 : life-=25 : poscount=0
						}
						if relez=1 : recomand=1
						if relez=0 : recomand=0
						getkey relez,90
						if (recomand=0)&(relez=1) : release+
						if release>relept {
							wrapos=0 : muteki=1 : stmn=500 : release=0 : stun=0 : satstun=1 : wrahantei=0 : wrapos=0
						}
					 	goto *cantmov
						
					}
					if (rusipos>0)&(life>0) {								;���V�t�F�����܂�p�^�[��
						down=0 :gosub *patreset : sclob=0 : patd=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : stun=1 : rusi_tpat=8
						equipatk=0 : eqhit=0 : equipstun=50 : equipz=0 : eqatkp=0
						sclob=0
						if keiren>=90 : bure=3 : keiren=0
						relept=0
						gmode 2
						if rusipos=1 {
							pos cx+bure,200 : gmode 2 : gcopy 29,370,0,185,256 : poscount+ : relept=20
							bure=0 : keiren+
							if poscount>100 : life-=5 : poscount=0
						}
						if rusipos=2 {
							pos cx+bure,0 : gmode 2 : gcopy 29,0,0,185,512 : poscount+ : relept=20
							bure=0 : keiren+
							if poscount>100 : life-=10 : poscount=0
						}
						if relez=1 : recomand=1
						if relez=0 : recomand=0
						getkey relez,90
						if (recomand=0)&(relez=1) : release+
						if (rusipos=1)&(life<=0) : release=1000
						if release>relept {
							if rusipos=2{
								rusi_uekaraburi=0 : rusi_tsyoku+ : rusi_tf6=0 :  : rusi_tsyoku1_on=0 : rusi_tpat=6
								rusi_tr_rnd2=rnd(2)
								if rusi_tr_rnd2=0 : rusi_ueatk_on=1
								if rusi_tr_rnd2=1 : rusi_sitaatk_on=1
								rusitrx=cx+93-50-100+rnd(100)
							}
							if rusipos=1{
								rusi_tpat=1
							}
							muteki=1 : stmn=500 : release=0 : stun=0 : rusipos=0 : equipstun=100 : eqatk=0
							
						}
					 	goto *cantmov
						
					}
					if (poscubesam>0)&(life>0) {								;���[�X�L���[�u���܂�
						down=0 :gosub *patreset : sclob=0 : patd=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : stun=1 : rusi_tpat=8 : muteki=1 : mutekiT=0
						if keiren>=90 : bure=3 : keiren=0
						relept=0
							pos cx+bure,200 : gmode 2 : gcopy 2,0,512,185,256
							pos cx-13,160 : gmode 2 : gcopy 15,0,0,210,320 : poscount+ : relept=20
							bure=0 : keiren+
							if poscount>50 : life-=5 : poscount=0
						if relez=1 : recomand=1
						if relez=0 : recomand=0
						getkey relez,90
						if (recomand=0)&(relez=1) : release+
						if release>relept {
							muteki=1 : stmn=500 : release=0 : stun=0 : poscubesam=0
							repeat 2
							poscube.cnt=0
							loop
						}
					 	goto *cantmov
						
					}
					if hitkro>=1 {				;�J���X�U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : throw=0 : stun=1
						if dir=1 : car_dir=3 : else : car_dir=2
						if posses=0{
						pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						if stunoff>50 : life-=hitkro*15 : gosub *hitoff
						goto *cantmov
						}
					}
					if hitwarmsam>=1 {				;���[���U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : throw=0 : stun=1 : muteki=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						if stunoff>40 : life-=15 : gosub *hitoff :  stun=0 : stunoff=0
						goto *cantmov
					}
					if hitpirasam>=1 {				;�s���j�A�U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : throw=0 : stun=1 : muteki=1
						if mapwater=1 {
							pos cx,cy : gcopy 22,wshibuki,512,185,256 : gmode 2 : stunoff+
							if wshibukip=20 : wshibuki=370
							if wshibukip>=40 : wshibuki=185 : wshibukip=-1
							down=1
							wshibukip+
						}
						else {
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						}
						if (stunoff>40)&(mapwater=0) : life-=20 : gosub *hitoff :  stun=0 : stunoff=0
						if (stunoff>80)&(mapwater=1) : life-=20 : gosub *hitoff :  stun=0 : stunoff=0
						goto *cantmov
					}
					
					if hitdogsam>=1 {				;�C�k�U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : throw=0 : stun=1 : muteki=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						if stunoff>30 : life-=17 : gosub *hitoff :  stun=0 : stunoff=0
						goto *cantmov
					}
					
					if hitjairosam>=1 {				;�J�U�O���}�U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : throw=0 : stun=1 : muteki=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gcopy car_dir,0,512,185,256 : gmode 2 : stunoff+
						if stunoff>50 : life-=30 : gosub *hitoff :  stun=0 : stunoff=0
						goto *cantmov
					}
					if hitmamasam>=1 {				;�}�}�U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : throw=0 : stun=1 : muteki=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						if stunoff>30 : life-=25 : gosub *hitoff :  stun=0 : stunoff=0
						goto *cantmov
					}
					if hitmama2sam>=1 {				;�}�}�U���Q
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : throw=0 : stun=1 : muteki=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						if stunoff>50 : life-=50 : gosub *hitoff :  stun=0 : stunoff=0
						goto *cantmov
					}
					if hitsizukusam>=1 {				;�x���[�u�u������
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : throw=0 : stun=1 : muteki=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						if stunoff>30 : life-=8 : gosub *hitoff :  stun=0 : stunoff=0
						goto *cantmov
					}
					if hitkutisam>=1 {				;�}�E�X�U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : throw=0 : stun=1
						if mapwater=1 {
							pos cx,cy : gcopy 22,wshibuki,512,185,256 : gmode 2 : stunoff+
							if wshibukip=20 : wshibuki=370
							if wshibukip>=40 : wshibuki=185 : wshibukip=-1
							down=1
							wshibukip+
						}
						else {
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						}
						if (stunoff>30)&(mapwater=0) : life-=10 : gosub *hitoff :  stun=0 : stunoff=0
						if (stunoff>80)&(mapwater=1) : life-=10 : gosub *hitoff :  stun=0 : stunoff=0
						goto *cantmov
					}
					if (BOSSA=1)&(BosshitA=1) {				;�����B�A�^���U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						if stunoff>40 : muteki=1 : life-=20 :  stun=0 : stunoff=0 : BosshitA=0
						goto *cantmov
					}
					if (BOSSB=1)&(BosshitB=1) {				;�T�^���U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gcopy car_dir,185,512,185,256 : gmode 2 : stunoff+
						if stunoff>40 : muteki=1 : life-=30 :  stun=0 : stunoff=0 : BosshitB=0 : satstun=1
						goto *cantmov
					}
					if (BOSSC=1)&(mamohit=1)&(kemurihitsum=0) {				;�}�����U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : muteki=1 : stun=1
						if dir=1 : car_dir=3 : else : car_dir=2
						if dir=1 {
							if (stone=1) : car_dir2=15
							if (stone=2) : car_dir2=21
							if (stone=3) : car_dir2=25
						}
						else {
							if (stone=1) : car_dir2=13
							if (stone=2) : car_dir2=17
							if (stone=3) : car_dir2=23
						}
						pos cx,cy : gmode 2 : gcopy car_dir,185,512,185,256 : gmode 2
						if stone>=1 : gmode 2 : gcopy car_dir2,185,512,185,256 : gmode 2
						stunoff+
						if stunoff>40 : life-=15 :  stun=0 : stunoff=0 : mamohit=0
						goto *cantmov
					}
					if (BOSSD=1)&(beruhit=1) {;�x���t�F�S�[���{��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : muteki=1 : stun=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gmode 2 : gcopy car_dir,185,512,185,256 : gmode 2
						stunoff+
						if stunoff>40 : life-=30 : gosub *hitoff : stun=0 : stunoff=0 : beruhit=0
						goto *cantmov
					}
					if (BOSSD=1)&(beruhit=2) {;�x���t�F�S�[���{��2
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : muteki=1 : stun=1
						if dir=1 : car_dir=3 : else : car_dir=2
						pos cx,cy : gmode 2 : gcopy car_dir,185,512,185,256 : gmode 2
						stunoff+
						if stunoff>50 : life-=25 : gosub *hitoff : stun=0 : stunoff=0 : beruhit=0
						goto *cantmov
					}
					if (lustatari=1)&(BOSSE=1) {;------------------�A�X���f�E�X�{��
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,185,512,185,256 : gmode 2 
							stunoff+
							if stunoff>40 : life-=25 : stun=0 : stunoff=0 : gosub *hitoff : lustatari=0 : hitacid=0
							goto *cantmov
					}
					if (hitacid=1)&(BOSSE=1) {;------------------�A�X���f�E�X��
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							gassbure=(stunoff\2)*3
							pos cx+gassbure,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>300 : stun=0 : stunoff=0 : gosub *hitoff : hitacid=0
							goto *cantmov
					}
					if (EballhitA=1)&(BOSSE=1) {;------------------�A�X���f�E�X�{�[���`
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,185,512,185,256 : gmode 2 
							stunoff+
							if stunoff>50 : life-=16 : stun=0 : stunoff=0 : gosub *hitoff : EballhitA=0
							goto *cantmov
					}
					if (EballhitB=1)&(BOSSE=1) {;------------------�A�X���f�E�X�{�[���a
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>50 : life-=8 : stun=0 : stunoff=0 : gosub *hitoff : EballhitB=0
							goto *cantmov
					}
					if (rusi_tatk_v_hit=1)&(BOSSG=1) {;------------------�^���V�t�F���c�؂�
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>40 : life-=45 : stun=0 : stunoff=0 : gosub *hitoff : rusi_tatk_v_hit=0
							goto *cantmov
					}
					if (rusi_tatk_h_hit=1)&(BOSSG=1) {;------------------�^���V�t�F���΂ߐ؂�
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>40 : life-=20 : stun=0 : stunoff=0 : gosub *hitoff : rusi_tatk_h_hit=0
							goto *cantmov
					}
					if (rusi_tjump_hit=1)&(BOSSG=1) {;------------------�^���V�t�F���W�����v�ːi
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>40 : life-=10 : stun=0 : stunoff=0 : gosub *hitoff : rusi_tjump_hit=0
							goto *cantmov
					}
					if (rusi_tsyoku2_hit=1)&(BOSSG=1) {;------------------�^���V�t�F�����G��
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>30 : life-=20 : stun=0 : stunoff=0 : gosub *hitoff : rusi_tsyoku2_hit=0
							goto *cantmov
					}
					if (hitleasballsam>0)&(BOSSH=1) {;------------------���[�X�{�[��
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>30 : life-=8 : stun=0 : stunoff=0 : gosub *hitoff : hitleasballsam=0
							goto *cantmov
					}
					if (hitleasneedlesam>0)&(BOSSH=1) {;------------------���[�X�j
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>30 : life-=10 : stun=0 : stunoff=0 : gosub *hitoff : hitleasneedlesam=0
							goto *cantmov
					}
					if (hitleas_ray=1)&(BOSSH=1) {;------------------���[�X���[�U�[
					gosub *patreset : sclob=0 : aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>30 : life-=10 : stun=0 : stunoff=0 : gosub *hitoff : hitleas_ray=0
							goto *cantmov
					}
					repeat kemu
					if (BOSSC=1)&(kemurihit.cnt=1)&(mamohit=0) {				;�}�������U��
						gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : muteki=1 : stun=1
						if dir=1 : car_dir=3 : else : car_dir=2
						if dir=1 {
							if (stone=1) : car_dir2=15
							if (stone=2) : car_dir2=21
							if (stone=3) : car_dir2=25
						}
						else {
							if (stone=1) : car_dir2=13
							if (stone=2) : car_dir2=17
							if (stone=3) : car_dir2=23
						}
						pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
						if stone>=1 : gmode 2 : gcopy car_dir2,0,512,185,256 : gmode 2
						stunoff+
						if stunoff>40 : stone+ :  stun=0 : stunoff=0 : kemurihit.cnt=0
						kemurikurai=1
					}
					loop
					if kemurikurai=1 : kemurikurai=0 : goto *cantmov
					if satstun=1 {
						satstunoff+
						if satatunoff>40 :sat_A=0 : sat_B=0 : sat_C=0 : sat_E=0 : sat_D=0 : Bpate2=0 :  satstunoff=0 : satstun=0
					}
					repeat bkemu
					if (BOSSD=1)&(bkemu2hit.cnt=1) {				;�x���t�F�S�[���K�X
						if bktype.cnt=0 {
							slow=1 : slowT=250 : stun=0 : bkemu2hit.cnt=0
						}
						if bktype.cnt=1 {
							gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1
							if dir=1 : car_dir=3 : else : car_dir=2
							gassbure=(stunoff\2)*3
							pos cx+gassbure,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>80 :  stun=0 : stunoff=0 : gosub *hitoff : bkemu2hit.cnt=0
							kemurikurai=1
						}
						if bktype.cnt=2 {
							gosub *patreset : sclob=0 :aftrun=0 : select_on=0 : redbox=50 : dash=0 : down=0 : stun=1 : bktype2d=1
							if dir=1 : car_dir=3 : else : car_dir=2
							pos cx,cy  : gmode 2: gcopy car_dir,0,512,185,256 : gmode 2 
							stunoff+
							if stunoff>40 : life-=20 : stun=0 : stunoff=0 : gosub *hitoff : bkemu2hit.cnt=0 : bktype2d=0
							kemurikurai=1
						}
					}
					loop
					
					if kemurikurai=1 : kemurikurai=0 : goto *cantmov
					if hiding=1 : goto *cantmov


															;--------------------------������
					if omoev=1 {
						pos cx,cy : gmode 2 : gcopy 22,370,1024,185,256
						goto *cantmov
					}
					if throw=1 {							;---------------------����
					if (throwout=1)&(stun=1) {
							pos cx,cy : gmode 2 : gcopy thdir,555,1024,185,256
							goto *cantmov
					}
						down=0 : dash=0
						if dir=0 : thdir=2 : else : thdir=3
							if thpower<50 : pos cx,cy : gmode 2 : gcopy thdir,0,1024,185,256
							if (thpower>=50)&(thpower<100) : pos cx,cy : gmode 2 : gcopy thdir,185,1024,185,256
							if (thpower>=100) : pos cx,cy : gmode 2 : gcopy thdir,370,1024,185,256
						goto *cantmov
					}
					if equipatk=1{;--------------�����i�ōU��
						if equipA=1{
							if dir=0 : eqdir=2 : else : eqdir=3
							equipz=0
							if eqatkp=1 : eqhit=1 : down=0
							if (eqatkp>=0)&(eqatkp<1) : pos cx,cy : gmode 2 : gcopy eqdir,740,1024,185,256
							if (eqatkp>=1)&(eqatkp<20) : pos cx,cy : gmode 2 : gcopy eqdir,925,1024,185,256
							if (eqatkp>=20)&(eqatkp<=23) : pos cx,cy : gmode 2 : gcopy eqdir,740,1024,185,256
							if eqatkp=23 : eqhit=0 : equipatk=0 : equipstun=50 : stun=0
						}
						if equipB=1{
							sclob=0
							if dir=0 : eqdir=2 : else : eqdir=3
							equipz=0
							if eqatkp=1 : eqhit=1 : down=0
							if (eqatkp>=0)&(eqatkp<1) : pos cx,cy : gmode 2 : gcopy eqdir,740,1024,185,256
							if eqatkp=10 : eqhit=0
							if (eqatkp>=1)&(eqatkp<=30) : pos cx,cy : gmode 2 : gcopy eqdir,925,1024,185,256
							if eqatkp=30 : eqhit=0 : equipatk=0 : equipstun=50 : stun=0
						}
						if equipC=1{
							sclob=0
							if dir=0 : eqdir=2 : else : eqdir=3
							equipz=0
							if eqatkp=1 {
								eqhit=1 : down=0 : icep=0
								if dir=0 : icex=cx-30 : else : icex=cx+115
							}
							if (eqatkp>=0)&(eqatkp<1) : pos cx,cy : gmode 2 : gcopy eqdir,740,1024,185,256
							if eqatkp=20 : eqhit=0
							if (eqatkp>=1)&(eqatkp<=60) : pos cx,cy : gmode 2 : gcopy eqdir,925,1024,185,256
							if eqatkp=60 : eqhit=0 : equipatk=0 : equipstun=50 : stun=0
						}
						eqatkp+
						goto *cantmov
					}
					if a&1 {			;�o�L�����`��
						if (down=0)&(dash=0) {		;�����A�j���[�V������
							pos cx,cy : gcopy 2,fx,0,185,256 : gmode 2
							if (stone=1) : gcopy 13,fx,0,185,256 : gmode 2
							if (stone=2) : gcopy 17,fx,0,185,256 : gmode 2
							if (stone=3) : gcopy 23,fx,0,185,256 : gmode 2
							patl+
							if fx=925 {
								if patl>13 : fx=0 : patl=0
							}
							else {
								if patl>13 : fx+=185 : patl=0 
							}
							patdl=0 : patdr=0 : patdal=0 : patdar=0
						}
					}
					if (a=9)|(a=1)&(down=1) {
						if down=1 {		;���Ⴊ�݃A�j����
							pos cx,cy : gcopy 2,fdx,256,185,256 : gmode 2
							if (stone=1) : gcopy 13,fdx,256,185,256 : gmode 2
							if (stone=2) : gcopy 17,fdx,256,185,256 : gmode 2
							if (stone=3) : gcopy 23,fdx,256,185,256 : gmode 2
							if patdl=0 : fdx=740
							if patdl=20 : fdx=555
							if patdl=40 : fdx=925
							if patdl=60 : fdx=555
							if patdl=80 : fdx=740 : patdl=-1
							patdl+
						}
						patl=0 : patr=0 : patd=0 : patdr=0 : patdal=0 : patdar=0
					}
					if (a&1)&(dash=1)&(down=0) {				;�_�b�V���A�j����
						pos cx,cy : gcopy 2,fdax,768,185,256 : gmode 2
						if (stone=1) : gcopy 13,fdax,768,185,256 : gmode 2
						if (stone=2) : gcopy 17,fdax,768,185,256 : gmode 2
						if (stone=3) : gcopy 23,fdax,768,185,256 : gmode 2
						patdal+
							if fdax=925 {
								if patdal>6 : fdax=0 : patdal=0
							}
							else {
								if patdal>6 : fdax+=185 : patdal=0 
							}
						patl=0 : patr=0 : patdr=0 : patdl=0 : patdar=0
					}
					if a&4 {
						if (down=0)&(dash=0) {		;�����A�j���[�V�����E
							pos cx,cy : gcopy 3,fx,0,185,256 : gmode 2
							if (stone=1) : gcopy 15,fx,0,185,256 : gmode 2
							if (stone=2) : gcopy 21,fx,0,185,256 : gmode 2
							if (stone=3) : gcopy 25,fx,0,185,256 : gmode 2
							patr+
							if fx=925 {
								if patr>13 : fx=0 : patr=0
							}
							else {
								if patr>13 : fx+=185 : patr=0
							}
							patdl=0 : patdr=0
						}
					}
					if (a=12)|(a=4)&(down=1) {
						if down=1 {		;���Ⴊ�݃A�j���E
							pos cx,cy : gcopy 3,fdx,256,185,256 : gmode 2
							if (stone=1) : gcopy 15,fdx,256,185,256 : gmode 2
							if (stone=2) : gcopy 21,fdx,256,185,256 : gmode 2
							if (stone=3) : gcopy 25,fdx,256,185,256 : gmode 2
							if patdr=0 : fdx=740
							if patdr=20 : fdx=555
							if patdr=40 : fdx=925
							if patdr=60 : fdx=555
							if patdr=80 : fdx=740 : patdr=-1
							patdr+
						}
							
						patl=0 : patr=0 : patd=0 : patdl=0 : patdal=0 : patdar=0
					}
					if (a=4)&(dash=1)&(down=0) {				;�_�b�V���A�j���E
						pos cx,cy : gcopy 3,fdax,768,185,256 : gmode 2
						if (stone=1) : gcopy 15,fdax,768,185,256 : gmode 2
						if (stone=2) : gcopy 21,fdax,768,185,256 : gmode 2
						if (stone=3) : gcopy 25,fdax,768,185,256 : gmode 2
						patdar+
							if fdax=925 {
								if patdar>6 : fdax=0 : patdar=0
							}
							else {
								if patdar>6 : fdax+=185 : patdar=0 
							}
						patl=0 : patr=0 : patdr=0 : patdl=0 : patdal=0
					}
					
			if (a=0)|(a=2) {			;�Î~���
						down=0
						sclob=0
						if brake=0 {
							if dir=0 {
								pos cx,cy
								gcopy 2,0,256,185,256 : gmode 2
								if (stone=1) : gcopy 13,0,256,185,256 : gmode 2
								if (stone=2) : gcopy 17,0,256,185,256 : gmode 2
								if (stone=3) : gcopy 23,0,256,185,256 : gmode 2
							}
							if dir=1 {
								pos cx,cy 
								gcopy 3,0,256,185,256 : gmode 2
								if (stone=1) : gcopy 15,0,256,185,256 : gmode 2
								if (stone=2) : gcopy 21,0,256,185,256 : gmode 2
								if (stone=3) : gcopy 25,0,256,185,256 : gmode 2
							}
						}					
						gosub *patreset : patd=0
				}		
			if ((a=8)&(a!12)&(a!9))|((a=10)&(a!14)&(a!11)) {			;���Ⴊ�ݏ��
					sclob=0
					if down=1 : patd+=9
					if (dir=0)&(patd<=8) {	
							patd+ : stun=1
						pos cx,cy : gcopy 2,185,256,185,256 : gmode 2
						if (stone=1) : gcopy 13,185,256,185,256 : gmode 2
						if (stone=2) : gcopy 17,185,256,185,256 : gmode 2
						if (stone=3) : gcopy 23,185,256,185,256 : gmode 2
					}
					if (dir=1)&(patd<=8) {
							patd+ : stun=1
						pos cx,cy : gcopy 3,185,256,185,256 : gmode 2
						if (stone=1) : gcopy 15,185,256,185,256 : gmode 2
						if (stone=2) : gcopy 21,185,256,185,256 : gmode 2
						if (stone=3) : gcopy 25,185,256,185,256 : gmode 2
					}
					if (dir=0)&(patd>8) {	
							patd+ : down=1
						pos cx,cy : gcopy 2,370,256,185,256 : gmode 2
						if (stone=1) : gcopy 13,370,256,185,256 : gmode 2
						if (stone=2) : gcopy 17,370,256,185,256 : gmode 2
						if (stone=3) : gcopy 23,370,256,185,256 : gmode 2
					}
					if (dir=1)&(patd>8) {
							patd+ : down=1
						pos cx,cy : gcopy 3,370,256,185,256 : gmode 2
						if (stone=1) : gcopy 15,370,256,185,256 : gmode 2
						if (stone=2) : gcopy 21,370,256,185,256 : gmode 2
						if (stone=3) : gcopy 25,370,256,185,256 : gmode 2
					}
					if patd>=30 : stun=0
					gosub *patreset
				}
									
*cantmov		
				if deadwait=1 {
					redfeed+
					if redfeed=200 : filterR=50
					if redfeed=220 : filterR=100
					if redfeed=240 : filterR=150
					if redfeed=260 : filterR=200
					if redfeed=280 : filterR=250
					if redfeed=500 : filterR=255
					if mamadead=2{
						if redfeed>=650 : dead=24 : mamadead=0 : gosub *event_dead
					}
					else{
						gosub *yarinaoshi : restart=0 : gkr=0 
					}
				}
							;---------------�����A�C�e���̕\��(������O
				if (throw=1)&(throwout=0) {
					if Ithrow=1 : thobx=120 : thoby=80
					if dir=0 {
						if thpower<50 : thx=cx+123 : thy=cy+118
						if (thpower>=50)&(thpower<100) : thx=cx+129 : thy=cy+116
						if thpower>=100 : thx=cx+127 : thy=cy+120
					}
					if dir=1{
						if thpower<50 : thx=cx+25 : thy=cy+118
						if (thpower>=50)&(thpower<100) : thx=cx+18 : thy=cy+116
						if thpower>=100 : thx=cx+24 : thy=cy+120
					}
					pos thx,thy : gmode 2 : gcopy 20,thobx,thoby,40,40
					thlen=(thpower*2)/110
					if thlen=0 : thlen=1
					if dir=0 : thlen *= -1
				}
				;----------------------��������
				repeat enam
				if kuthill.cnt=1 {
					if (life<=0)&(poshill<30) : pos cx+poshillx.cnt,cy+poshilldy.cnt : gmode 2 : gcopy 20,kuthillpat.cnt,80,40,40
					if (life<=0)&(poshill>=30) : pos cx+poshillx.cnt,cy+poshilly.cnt : gmode 2 : gcopy 20,kuthillpat.cnt,80,40,40
					if (dir=0)&(life>0) {
						if down=0 : pos cx+poshillx.cnt,cy+poshilly.cnt : gmode 2 : gcopy 20,kuthillpat.cnt,80,40,40
						if down=1 {
							
							if (a=12)|(a=4)|(a=9)|(a=1) {
								pos cx+poshilldwx.cnt,cy+poshilldwy.cnt : gmode 2 : gcopy 20,kuthillpat.cnt,80,40,40
							}
							else {
								pos cx+poshillx.cnt,cy+poshilldy.cnt : gmode 2 : gcopy 20,kuthillpat.cnt,80,40,40
							}
						}
					}
					if (dir=1)&(life>0) {
						if down=0 : pos cx-30+poshillx.cnt,cy+poshilly.cnt : gmode 2 : gcopy 20,kuthillpat.cnt,80,40,40
						if down=1 {
							if (a=12)|(a=4)|(a=9)|(a=1) {
								pos cx-20+poshilldwx.cnt,cy+poshilldwy.cnt : gmode 2 : gcopy 20,kuthillpat.cnt,80,40,40
							}
							else {
								pos cx-30+poshillx.cnt,cy+poshilldy.cnt : gmode 2 : gcopy 20,kuthillpat.cnt,80,40,40
							}
						}
					}
					if kuthillpatf.cnt=40 : kuthillpat.cnt=40
					if kuthillpatf.cnt=60 : kuthillpat.cnt=80
					if kuthillpatf.cnt>=90 : kuthillpat.cnt=0 : kuthillpatf.cnt=-1
					kuthillpatf.cnt+
				}
				loop
				repeat enam
				if kutbag.cnt=1 {
					if (life<=0)&(deadwait=0) : pos cx+posbagx.cnt,cy+posbagy.cnt : gmode 2 : gcopy 20,kutbagpat.cnt,120,40,40
					if (life<=0)&(deadwait=1) : pos cx-10+posbagdwx.cnt,cy+posbagdwy.cnt : gmode 2 : gcopy 20,kutbagpat.cnt,120,40,40
					if (dir=0)&(life>0) {
						if down=0 : pos cx+posbagx.cnt,cy+posbagy.cnt : gmode 2 : gcopy 20,kutbagpat.cnt,120,40,40
						if down=1 {
							
							if (a=12)|(a=4)|(a=9)|(a=1) {
								pos cx+posbagdwx.cnt,cy+posbagdwy.cnt : gmode 2 : gcopy 20,kutbagpat.cnt,120,40,40
							}
							else {
								pos cx+posbagx.cnt,cy+posbagdy.cnt : gmode 2 : gcopy 20,kutbagpat.cnt,120,40,40
							}
						}
					}
					if (dir=1)&(life>0) {
						if down=0 : pos cx-30+posbagx.cnt,cy+posbagy.cnt : gmode 2 : gcopy 20,kutbagpat.cnt,120,40,40
						if down=1 {
							if (a=12)|(a=4)|(a=9)|(a=1) {
								pos cx-20+posbagdwx.cnt,cy+posbagdwy.cnt : gmode 2 : gcopy 20,kutbagpat.cnt,120,40,40
							}
							else {
								pos cx-30+posbagx.cnt,cy+posbagdy.cnt : gmode 2 : gcopy 20,kutbagpat.cnt,120,40,40
							}
						}
					}
					if kutbagpatf.cnt=40 : kutbagpat.cnt=40
					if kutbagpatf.cnt=60 : kutbagpat.cnt=80
					if kutbagpatf.cnt>=90 : kutbagpat.cnt=0 : kutbagpatf.cnt=-1
					kutbagpatf.cnt+
				}
				loop
	
				;-----------------------�G�̕`��(�L�����̑O)
				repeat enam
				if (en.cnt=1)&(etype.cnt=12){;�J�U�O���}
					kazar=0.0
					kazar=kazaspin.cnt
					if ((kaza.cnt>=0)&(kaza.cnt<200))|((kaza.cnt>=350)&(kaza.cnt<550)) {
						pos enx.cnt+93,328 : gmode 2,185,256 : grotate 32,0,1024,kazar,185,256
						pos enx.cnt+93,328 : gmode 2,185,256 : grotate 32,0,1024,kazar+(pi/6),185,256
						pos enx.cnt+93,328 : gmode 2,185,256 : grotate 32,0,1024,kazar+(pi/3),185,256
					}
					else{
						pos enx.cnt,200 : gmode 2,185,256 : gcopy 32,0,1024,185,256
					}
					if (kaza.cnt>=0)&(kaza.cnt<200){
						kazaspin.cnt+=10*pi
					}
					if (kaza.cnt>=350)&(kaza.cnt<550){
						kazaspin.cnt-=10*pi
					}
				}
				loop
				;-----------------------------------�O�ɕ\������I�u�W�F�N�g
				if (life<=30)&(hitjairosam>0){;�܂��Ղ��p
					if dcou<2{
						if dir=0 {
							pos  cx+1+zureB,cy+zureC : gmode 2 : gcopy 50,deathf2x.dcou,256,185,256
						}
						if dir=1 {
							pos  cx+zureB,cy+zureC : gmode 2 : gcopy 50,deathf2x.dcou,768,185,256
						}
					}
				}
				repeat enam
				if (en.cnt=1)&(etype.cnt=1) {				;���O���p�^�[��
					if ehit.cnt=0 {
						if endir.cnt=0 : dir_enemy.cnt=0 : else : dir_enemy.cnt=93
						pos enx.cnt,363 : gmode 2 : gcopy 4,fe1x.cnt,dir_enemy.cnt,118,93
					}
					if estun.cnt<=0 {
						if pate1.cnt=0 : fe1x.cnt=0
			    		if pate1.cnt=20 : fe1x.cnt=118
						if pate1.cnt=40 : fe1x.cnt=236
						if pate1.cnt>=60 : pate1.cnt=-1
						pate1.cnt+
					}
				}
				if (en.cnt=1)&(etype.cnt=2) {				;�J���X�p�^�[��
					if ehit.cnt=0 {	
						if endir.cnt=0 : dir_enemy.cnt=186 : else : dir_enemy.cnt=279
						pos enx.cnt,100 : gmode 2 : gcopy 4,fe2x.cnt,dir_enemy.cnt,118,93
					}
					else {
						if dir=1 : dir_enemy.cnt=186 : else : dir_enemy.cnt=279
						pos enx.cnt,kroatk.cnt : gmode 2 : gcopy 4,354,dir_enemy.cnt,118,93
					}
						if pate2.cnt=0 : fe2x.cnt=0
						if pate2.cnt=10 : fe2x.cnt=118
						if pate2.cnt=20 : fe2x.cnt=236
						if pate2.cnt>=30 : pate2.cnt=-1	
						pate2.cnt+
				}
				if (en.cnt=1)&(etype.cnt=3) {				;�N���P���|����p�^�[��
					if posses=1 {
							if kumopos.cnt=0 {
								if enx.cnt<=cx : dir_enemy.cnt=558 : else : dir_enemy.cnt=651
								pos enx.cnt,363 : gmode 2 : gcopy 4,fe4x.cnt,dir_enemy.cnt,118,93
							}
							else {
								if enx.cnt<=cx : dir_enemy.cnt=744 : else : dir_enemy.cnt=837
								pos enx.cnt,363 : gmode 2 : gcopy 4,fe5x.cnt,dir_enemy.cnt,118,93
							}
					}
					if estun.cnt<=0 {
						if pate3.cnt=0 : fe3x.cnt=354
						if pate3.cnt=30 : fe3x.cnt=472
						if pate3.cnt=60 : fe3x.cnt=354
						if pate3.cnt=90 : fe3x.cnt=590
						if pate3.cnt>=120 : fe3x.cnt=354 : pate3.cnt=-1
						if pate4.cnt=0 : fe4x.cnt=0
						if pate4.cnt=10 : fe4x.cnt=118
						if pate4.cnt=20 : fe4x.cnt=0
						if pate4.cnt=30 : fe4x.cnt=236
						if pate4.cnt>=40 : fe4x.cnt=0 : pate4.cnt=-1
						if pate5.cnt=0 : fe5x.cnt=0
						if pate5.cnt=40 : fe5x.cnt=118
						if pate5.cnt>=80 : fe5x.cnt=0 : pate5.cnt=-1
						pate3.cnt+ : pate4.cnt+ : pate5.cnt+
					}
				}
				if (en.cnt=1)&(etype.cnt=4)&(warm_on.cnt=1) {						;���[��
					if pate6.cnt=0 : fe6x.cnt=106 : warmhant.cnt=1
					pos enx.cnt,276 : gmode 2 : gcopy 24,fe6x.cnt,0,106,180
					if pate6.cnt=4 : fe6x.cnt=106
					if pate6.cnt=8 : fe6x.cnt=212
					if pate6.cnt=28 : fe6x.cnt=0 : warmhant.cnt=0
					if pate6.cnt=38 : pate6.cnt=-1 : fe6x.cnt=0 : warm_on.cnt=0 : warmstun.cnt=70
					pate6.cnt+
				}
				if (warm_on.cnt=0)&(pate6.cnt>0) : fe6x.cnt=0 : pate6.cnt=0 : warmhant.cnt=0
				if (en.cnt=1)&(etype.cnt=5)&(kuthill.cnt=0) {				;�q��
					if (endir.cnt=0)&(hillatk.cnt=0) : fe7y.cnt=0 : hillmov.cnt=2+rnd(5)
					if (endir.cnt=1)&(hillatk.cnt=0) : fe7y.cnt=40 : hillmov.cnt=-2-rnd(5)
					if pate7.cnt=0 : fe7x.cnt=80
					pos enx.cnt,eny.cnt : gmode 2 : gcopy 20,fe7x.cnt,fe7y.cnt,40,40
					if estun.cnt<=0 {
						if pate7.cnt=50 : hillatk.cnt=1 : hilljumpa.cnt=6+rnd(14) : hilljumpb.cnt=5+rnd(5)
						if pate7.cnt=60 : hillhant.cnt=1
						if pate7.cnt=70 : fe7x.cnt=40
						if pate7.cnt=100 : fe7x.cnt=0
						if pate7.cnt=100 : fe7x.cnt=80 : hillhant.cnt=0
						if pate7.cnt=105 : hillatk.cnt=0 : pate7.cnt=-1 : estun.cnt=rnd(30)
						if (pate7.cnt>=50)&(pate7.cnt<55) : eny.cnt-=hilljumpa.cnt
						if (pate7.cnt>=55)&(pate7.cnt<80) : eny.cnt-=hilljumpb.cnt
						if (pate7.cnt>=70)&(pate7.cnt<95) : eny.cnt+=hilljumpb.cnt
						if (pate7.cnt>=95)&(pate7.cnt<100) : eny.cnt+=hilljumpa.cnt
						if (pate7.cnt>=50)&(pate7.cnt<100) : enx.cnt+=hillmov.cnt+sclob
						if ((pate7.cnt>=0)&(pate7.cnt<50))|((pate7.cnt>=100)&(pate7.cnt<105)) : enx.cnt+=sclob
						pate7.cnt+
					}
					else {
						enx.cnt+=sclob
					}
					if hillatk.cnt=0 : eny.cnt=416
				}
				if (estun.cnt>0)&(etype.cnt=5)&(pate7.cnt>0) : hillatk.cnt=0 : hillhant.cnt=0 : pate7.cnt=0 : fe7x.cnt=80
				if (en.cnt=1)&(etype.cnt=6) {				;�s���j�A
					if pira_on.cnt=1 {
						if piraatkdir.cnt=0 : piramov.cnt=-4 : fe8y.cnt= 180 : else : piramov.cnt=4 : fe8y.cnt= 0
						if pate8.cnt=0 : fe8x.cnt=318
						pos enx.cnt,eny.cnt : gmode 2 : gcopy 24,fe8x.cnt,fe8y.cnt,106,180
						if pate8.cnt=30 : fe8x.cnt=424 : pirahant.cnt=1
						if ((pate8.cnt>=0)&(pate8.cnt<30))|((pate8.cnt>=90)&(pate8.cnt<110)) : enx.cnt+=sclob
						if (pate8.cnt>=30)&(pate8.cnt<90) : enx.cnt+=piramov.cnt+sclob
						if (pate8.cnt>=30)&(pate8.cnt<60) : eny.cnt-
						if (pate8.cnt>=60)&(pate8.cnt<90) : eny.cnt+
						if pate8.cnt=80 : fe8x.cnt=530
						if pate8.cnt=90 : pirahant.cnt=0
						if pate8.cnt=110 : pate8.cnt=-1 : fe8x.cnt=318 : pira_on.cnt=0 : pirastun.cnt=60
						pate8.cnt+
					}
					else {
						if endir.cnt=0 : pos enx.cnt,285 : gmode 2 : gcopy 24,318,180,106,180 : else : pos enx.cnt,285 : gmode 2 : gcopy 24,318,0,106,180
					}
					if (pira_on.cnt=0)&(pate8.cnt>0) : fe8x.cnt=318 : eny.cnt=285 : pate8.cnt=0 : pirahant.cnt=0
				}
				if (en.cnt=1)&(etype.cnt=7) {				;�A���m�E��
					unknownf=rnd(4)
					fe9x.cnt=unknownf*185
					pos enx.cnt,200 : gmode 2 : gcopy 10,fe9x.cnt,0,185,256
				}
				if (en.cnt=1)&(etype.cnt=8) {      ;�o�u��
					if babble_on.cnt=0{
						if endir.cnt=0 : babblef.cnt=212 : babblep.cnt=106  : babbleheadx.cnt=-6 : else : babblef.cnt=0 : babblep.cnt=0 : babbleheadx.cnt=0
						pos enx.cnt,150 : gmode 2 : gcopy 24,babblef.cnt,360,106,180
						pos enx.cnt+babbleheadx.cnt+fe9x.cnt,105+fe9y.cnt : gmode 2 : gcopy 24,babblep.cnt,180,106,180
						if pate9.cnt=1 : fe9x.cnt=-7+rnd(14) : fe9y.cnt=-7+rnd(14)
						if pate9.cnt>=1+rnd(4) : fe9x.cnt=0 : fe9y.cnt=0 : pate9.cnt=-1
						pate9.cnt+
					}
					if babble_on.cnt=1{
						if endir.cnt=0 : babblef.cnt=318 : babblep.cnt=106 : babbleheadx.cnt=-18 : else : babblef.cnt=106 : babblep.cnt=0 : babbleheadx.cnt=23
						pos enx.cnt,150 : gmode 2 : gcopy 24,babblef.cnt,360,106,180
						pos enx.cnt+babbleheadx.cnt+fe9x.cnt,113+fe9y.cnt : gmode 2 : gcopy 24,babblep.cnt,180,106,180
						if pate9.cnt=1 : fe9x.cnt=-7+rnd(14) : fe9y.cnt=-7+rnd(14)
						if pate9.cnt>=1+rnd(4) : fe9x.cnt=0 : fe9y.cnt=0 : pate9.cnt=-1
						pate9.cnt+
					}
				}
				if (en.cnt=1)&(etype.cnt=9){;�}�E�X
					pos enx.cnt,200 : gmode 2 : gcopy 32,fe10x.cnt,512,185,256
					if pate10.cnt=10 : fe10x.cnt=370
					if pate10.cnt=20 : fe10x.cnt=185
					if pate10.cnt=30 : fe10x.cnt=370
					if pate10.cnt=40 : fe10x.cnt=0 : pate10.cnt=-1
					pate10.cnt+
				}
				if (en.cnt=1)&(etype.cnt=10){;�C�k
					if endir.cnt=0 : dir_enemy.cnt=768 : else : dir_enemy.cnt=896
					if ehit.cnt=0 {
						pos enx.cnt,348 : gmode 2 : gcopy 32,fe11x.cnt,dir_enemy.cnt,185,128
						if estun.cnt<=0 {
							if pate11.cnt=0 : fe11x.cnt=0
			    			if pate11.cnt=5 : fe11x.cnt=370
							if pate11.cnt=10 : fe11x.cnt=185
							if pate11.cnt=15 : fe11x.cnt=370
							if pate11.cnt>=20 : fe11x.cnt=0 : pate11.cnt=-1
							pate11.cnt+
						}
					}
					else{
						pos enx.cnt,348 : gmode 2 : gcopy 32,fe11x.cnt,dir_enemy.cnt,185,128
						if pate11.cnt=5 : fe11x.cnt=555
			    		if pate11.cnt>=10 : fe11x.cnt=370 : pate11.cnt=-1
			    		pate11.cnt+
					}
				}
				if (en.cnt=1)&(etype.cnt=13){;�}�}
					if mamaatk.cnt=0 {
						if endir.cnt=0 : dir_enemy.cnt=256 : else : dir_enemy.cnt=0
						pos enx.cnt,200 : gmode 2 : gcopy 34,fe14x.cnt,dir_enemy.cnt,185,256
						if estun.cnt<=20 {
							if pate14.cnt=0 : fe14x.cnt=0
			    			if pate14.cnt=20 : fe14x.cnt=185
							if pate14.cnt=40 : fe14x.cnt=370
							if pate14.cnt>=60 : fe14x.cnt=0 : pate14.cnt=-1
							pate14.cnt+
						}
					}
					if mamaatk.cnt=1{
						if mamaatk2.cnt=1{
							if endir.cnt=0 : dir_enemy.cnt=1024 : else : dir_enemy.cnt=768
							pos enx.cnt,200 : gmode 2 : gcopy 34,maatkx.cnt,dir_enemy.cnt,185,256
							if (endir.cnt=0)&(((maatkp.cnt>=50)&(maatkp.cnt<55))|((maatkp.cnt>=85)&(maatkp.cnt<88))){
								pos enx.cnt+185,200 : gmode 2 : gcopy 34,1110,1024,185,256
							}
							if (endir.cnt=0)&(maatkp.cnt>=55)&(maatkp.cnt<85){
								pos enx.cnt+185,200 : gmode 2 : gcopy 34,925,1024,185,256
								pos enx.cnt+370,200 : gmode 2 : gcopy 34,1110,1024,185,256
							}
							if (endir.cnt=1)&(((maatkp.cnt>=50)&(maatkp.cnt<55))|((maatkp.cnt>=85)&(maatkp.cnt<88))){
								pos enx.cnt-185,200 : gmode 2 : gcopy 34,1110,768,185,256
							}
							if (endir.cnt=1)&(maatkp.cnt>=55)&(maatkp.cnt<85){
								pos enx.cnt-185,200 : gmode 2 : gcopy 34,925,768,185,256
								pos enx.cnt-370,200 : gmode 2 : gcopy 34,1110,768,185,256
							}
							if maatkp.cnt=0 : maatkx.cnt=555
							if maatkp.cnt=30 : maatkx.cnt=555
							if maatkp.cnt=50 : maatkx.cnt=740 : marance.cnt=1
							if maatkp.cnt=55 : maatkx.cnt=740 : marance.cnt=2
							if maatkp.cnt=85 : maatkx.cnt=740 : marance.cnt=0
							if maatkp.cnt=88 : maatkx.cnt=740
							if maatkp.cnt=91 : maatkx.cnt=555
							if maatkp.cnt=101 : maatkx.cnt=925 : maatkp.cnt=-1 : mamaatk.cnt=0 : mamaatk2.cnt=0 : mamastun.cnt=60+rnd(10) : mamahand.cnt=-100
							maatkp.cnt+
						}
						else{
						if endir.cnt=0 : dir_enemy.cnt=256 : else : dir_enemy.cnt=0
						pos enx.cnt,200 : gmode 2 : gcopy 34,maatkx.cnt,dir_enemy.cnt,185,256
						if BOSSF=1{
							if maatkp.cnt=0 : maatkx.cnt=925
							if maatkp.cnt=20 : maatkx.cnt=555
							if maatkp.cnt=25 : maatkx.cnt=740 : maknife.cnt=1
							if maatkp.cnt=50 : maatkx.cnt=925 : maknife.cnt=0
							if maatkp.cnt=60 : maatkx.cnt=925 : maatkp.cnt=-1 : mamaatk.cnt=0 : mamastun.cnt=30+rnd(10)
						}
						else{
							if maatkp.cnt=0 : maatkx.cnt=925
							if maatkp.cnt=30 : maatkx.cnt=555
							if maatkp.cnt=35 : maatkx.cnt=740 : maknife.cnt=1
							if maatkp.cnt=60 : maatkx.cnt=925 : maknife.cnt=0
							if maatkp.cnt=70 : maatkx.cnt=925 : maatkp.cnt=-1 : mamaatk.cnt=0 : mamastun.cnt=60+rnd(10)
						}
						maatkp.cnt+
						}
					}
				}
				if (en.cnt=1)&(etype.cnt=14){;�G���`����
					if endir.cnt=0 : dir_enemy.cnt=256 : else : dir_enemy.cnt=0
					pos enx.cnt,220 : gmode 2 : gcopy 32,fe15x.cnt,dir_enemy.cnt,185,256
					if estun.cnt<=0 {
						if pate15.cnt=0 : fe15x.cnt=0
			    		if pate15.cnt=20 : fe15x.cnt=185
						if pate15.cnt=40 : fe15x.cnt=370
						if pate15.cnt>=80 : pate15.cnt=-1
						pate15.cnt+
					}
				}
				loop
				repeat enam*4
				if (ito.cnt=1)&(kumoito.cnt=0) {
					pos itox.cnt,230 : gmode 2 : gcopy 4,0,465,118,93
				}
					loop
				gmode 2
												;----------------------�{�X�p
			if BOSSA=1 {
				if uekaraburi=1 {						;�����B�A�^�������U��
					if patbossA<13 : pos cx+57,ehead : gmode 2 : gcopy 10,0,0,106,540 : else : pos cx+57,ehead : gmode 2 : gcopy 10,106,0,106,540
					if patbossA=3 : ehead+=90
					if patbossA=6 : ehead+=90
					if patbossA=9 : ehead+=90
					if patbossA=12 : ehead+=90
					if patbossA=17 : ehead-=180
					if patbossA=20 : ehead-=180 : uekaraburi=0 : patbossA=-1 : ehead=-540 : envykeikai=1
					patbossA+
				}
				if bossatackA=1 {						;�����B�A�^���ʏ�U��
					pos envplax,276 : gmode 2 : gcopy 10,212,etail,106,180
					if patbossA=4 : etail=180
					if patbossA=8 : etail=360
					if patbossA=14 : etail=0 : envyhantei=0
					if patbossA=18 : patbossA=-1 : etail=0 : bossatackA=0
					patbossA+
				}
				if sitaatack_on=1 {			;�����B�A�^�����y����
					pos envplax,276 : gmode 2 : gcopy 13,Bfe1x,180,105,179
				}
				
				if ueatack_on=1 {			;�����B�A�^����y����
					pos cx+57,0 : gmode 2 : gcopy 13,Bfe1x,0,105,179
				}
			}
			if (BOSSB=1)&(wrapos=0) {
				if sat_A=1 {			;�T�^������
				if wradir=0 : Bfe2y=0 : else : Bfe2y=450
					if Bpate2>10 : pos wraplax,6 : gmode 2 : gcopy 13,Bfe2x,Bfe2y,250,450 : else : pos wraplax,6 : gmode 2 : gcopy 10,Bfe2x,Bfe2y,250,450
					if Bpate2=0 : Bfe2x=1750
					if Bpate2=10 : Bfe2x=0
					if Bpate2=35 : wrahantei=1
					if Bpate2=40 : Bfe2x=250
					if Bpate2=45 : wrahantei=0
					if satTime>2000{
						if Bpate2=130 : Bpate2=0 : sat_A=0
					}
					else {
						if Bpate2=90 : Bpate2=0 : sat_A=0
					}
					Bpate2+
				}
				if (sat_B=1) {			;�T�^�����݂`
				if wradir=0 : Bfe2y=0 : else : Bfe2y=450
					pos wraplax,6 : gmode 2 : gcopy 10,Bfe2x,Bfe2y,250,450
					if Bpate2=0 : Bfe2x=1750
					if Bpate2=10 : Bfe2x=250
					if Bpate2=60 : wrahantei=2
					if Bpate2=70 : Bfe2x=750 : wrahantei=0
					if satTime>2000{
						if Bpate2=130 : Bpate2=0 : sat_B=0
					}
					else {
						if Bpate2=110 : Bpate2=0 : sat_B=0
					}
					Bpate2+
				}
				if (sat_C=1) {			;�T�^������B
				if wradir=0 : Bfe2y=0 : else : Bfe2y=450
					pos wraplax,6 : gmode 2 : gcopy 10,Bfe2x,Bfe2y,250,450
					if Bpate2=0 : Bfe2x=1750
					if Bpate2=10 : Bfe2x=1000
					if satTime>2000{
						if Bpate2=35 : wrahantei=3
						if Bpate2=60 : Bfe2x=1500
						if Bpate2=100 : wrahantei=0
						if Bpate2=110 : Bpate2=0 : sat_C=0
					}
					else {
						if Bpate2=30 : wrahantei=3
						if Bpate2=60 : Bfe2x=1500
						if Bpate2=100 : wrahantei=0
						if Bpate2=100 : Bpate2=0 : sat_C=0
					}
					Bpate2+
				}
				if sat_D=1 {			;�T�^�����[�U�[
					if Bpate2<30 {
						if wradir=0 : Bfe2y=0 : else : Bfe2y=450
					}
					pos wraplax,6 : gmode 2 : gcopy 10,Bfe2x,Bfe2y,250,450
					if (Bpate2>70)&(Bpate2<85) {
						if wradir=0 : pos wraplax-750,6 : gmode 2 : gcopy 13,0,1350,1000,450						
						if wradir=1 : pos wraplax,6 : gmode 2 : gcopy 13,0,900,1000,450
					}
					if Bpate2=0 : Bfe2x=1750
					if Bpate2=10 : Bfe2x=0
					if Bpate2=30 {
						Bfe2x=1250
						if wradir=0 : Bfe2y=900
						if wradir=1 : Bfe2y=1350
					}
					if Bpate2=50 : Bfe2x=1500
					if Bpate2=70 : satray=1
					if Bpate2=85 : satray=0
					if Bpate2=150 : Bpate2=0 : sat_D=0
					Bpate2+
				}
				if (satbigray=1)&(life>0) {			;�T�^������Ԃƃ��[�U�[
				if Bpate2<20{
					pos 100,6 : gmode 2 : gcopy 10,Bfe2x,450,250,450
				}
				else {
					pos 100,6 : gmode 2 : gcopy 13,500,0,250,450
					pos 100,6 : gmode 2 : gcopy 13,Bfe2x,0,250,450
				}
				if Bpate2=0 : Bfe2x=1750
				if Bpate2=10 : Bfe2x=0
				if Bpate2=20 : Bfe2x=1000
				if Bpate2=30 : Bfe2x=750
				if Bpate2=40 : Bfe2x=1000 : Bpate2=20
				Bpate2+
				cauntdown+
				}
					
				if sat_E=1 {			;�T�^���_�~�[
				if wradir=0 : Bfe2y=0 : else : Bfe2y=450
					pos wraplax,6 : gmode 2 : gcopy 10,Bfe2x,Bfe2y,250,450
					if Bpate2=0 : Bfe2x=1750
					if Bpate2=10 : Bfe2x=0
					if satTime>2000{
						if Bpate2=50 : sat_E=0
					}
					else {
						if Bpate2=30 : sat_E=0
					}
					Bpate2+
				}
			}
			if BOSSC=1 {			;�}����
				pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200
				if mamospinf=5 : mamospin=200
				if mamospinf>=10 : mamospin=0 : mamospinf=-1
				mamospinf+
				repeat kemu;��
				color 0,0,0
				if kemuri_on.cnt=1 : pos kemurix.cnt,kemuriy.cnt : gmode 4,,,160 : gcopy 10,kemurikemu.cnt,0,200,200
				if kemurif.cnt=30 : kemurikemu.cnt=600
				if kemurif.cnt>=60 : kemurikemu.cnt=400 : kemurif.cnt=-1
				kemurif.cnt+
				color 255,255,255
				loop
			}
			if BOSSD=1 {			;�x���t�F�S�[���̃P����
				repeat bkemu
				if bkemu2_on.cnt=1 {
					if bktype.cnt=0 {
						if bkemu2f.cnt=0 : bkemukemu.cnt=0
						pos bkemu2x.cnt,bkemu2y.cnt : color 0,0,0 : gmode 4,,,160 : gcopy 15,bkemukemu.cnt,135,200,200 : color 255,255,255
						if bkemu2f.cnt=30 : bkemukemu.cnt=200
						if bkemu2f.cnt>=60 : bkemukemu.cnt=0 : bkemu2f.cnt=-1
						bkemu2f.cnt+
					}
					if bktype.cnt=1 {
						if bkemu2f.cnt=0 : bkemukemu.cnt=800
						pos bkemu2x.cnt,bkemu2y.cnt : color 0,0,0 : gmode 4,,,160 : gcopy 15,bkemukemu.cnt,135,200,200 : color 255,255,255
						if bkemu2f.cnt=30 : bkemukemu.cnt=1000
						if bkemu2f.cnt>=60 : bkemukemu.cnt=800 : bkemu2f.cnt=-1
						bkemu2f.cnt+
					}
					if bktype.cnt=2 {
						if bkemu2f.cnt=0 : bkemukemu.cnt=400
						pos bkemu2x.cnt,bkemu2y.cnt : color 0,0,0 : gmode 4,,,160 : gcopy 15,bkemukemu.cnt,135,200,200 : color 255,255,255
						if bkemu2f.cnt=30 : bkemukemu.cnt=600
						if bkemu2f.cnt>=60 : bkemukemu.cnt=400 : bkemu2f.cnt=-1
						bkemu2f.cnt+
					}
				}
				loop
					repeat 3
					if berumode=1 : pos bkemu3x.cnt,0 : color 0,0,0 : gmode 2 : gcopy 15,580,335,265,500 : color 255,255,255
					loop
					repeat 2
					pos bkemu1x.cnt,340  : color 0,0,0 : gmode 4,,,160 : gcopy 15,0,0,895,135
					loop
				if beruatk=2 {;------------�x���t�F�S�[���U���Q
					if beruatk2p=0 : beruatk2f=290
					pos berux+mappos+240,130 : color 0,0,0 : gmode 4,,,180 : gcopy 15,beruatk2f,335,290,370 : color 255,255,255
					if beruatk2p=5 : beruatk2f=0 : beruhunt2=1
					if beruatk2p=100 : beruatk2f=290 : beruatk=0 : beruatk2p=-1 : beruhunt2=0
					beruatk2p+
				}
			}
			if BOSSE=1{;�A�X���f�E�X
				
			 	if lustderu>=1{;�o��
				 	 color 0,0,0 : pos cos(pi*derur/360)*derua+lustx+50.0,sin(pi*derur/360)*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*derur/360)+(pi/3))*derua+lustx+50.0,sin((pi*derur/360)+(pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*derur/360)+(2*pi/3))*derua+lustx+50.0,sin((pi*derur/360)+(2*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*derur/360)+pi)*derua+lustx+50.0,sin((pi*derur/360)+pi)*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*derur/360)+(4*pi/3))*derua+lustx+50.0,sin((pi*derur/360)+(4*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*derur/360)+(5*pi/3))*derua+lustx+50.0,sin((pi*derur/360)+(5*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200 : color 255,255,255
					if lustderup=70 : lustderu=0 : lust_on=1 : lustderup=-1 : derur=0 : derua=500
				 	lustderup+
				 	derur -= 30: derua-=5
				 }
				 if lust_kie=1{
					 color 0,0,0 : pos cos(pi*kier/360)*kiea+lustx+50.0,sin(pi*kier/360)*kiea+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*kier/360)+(pi/3))*kiea+lustx+50.0,sin((pi*kier/360)+(pi/3))*kiea+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*kier/360)+(2*pi/3))*kiea+lustx+50.0,sin((pi*kier/360)+(2*pi/3))*kiea+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*kier/360)+pi)*kiea+lustx+50.0,sin((pi*kier/360)+pi)*kiea+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*kier/360)+(4*pi/3))*kiea+lustx+50.0,sin((pi*kier/360)+(4*pi/3))*kiea+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
					 pos cos((pi*kier/360)+(5*pi/3))*kiea+lustx+50.0,sin((pi*kier/360)+(5*pi/3))*kiea+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200 : color 255,255,255
					 if lustkiep=70 : lust_kie=0 : lust_on=0 : lustmode=0 : lustkiep=-1 : kiea=100 : kier=0 : lustdam=0
					 lustkiep+
					 kier += 30 : kiea+=13
				}
				if lust_on=1 {;�ʏ�
					if lustdir=0{
						pos lustx,150 : gmode 2 : gcopy 13,0,0,350,300
					}
					if lustdir=1{
						pos lustx,150 : gmode 2 : gcopy 13,350,0,350,300
					}
					if lustdam=1{
						if lustdir=0{
						pos lustx,150 : gmode 2 : gcopy 13,0,lustflaf,350,300
						}
						if lustdir=1{
							pos lustx,150 : gmode 2 : gcopy 13,350,lustflaf,350,300
						}
						if lustflash\2=0 : lustflaf=300 : else : lustflaf=0
						if lustflash>=100 : lustdam=0 : lustflash=-1
						lustflash+
						
					}
				}
				if acid1=1{;�_�U���`
					if lustdir=0 : aciddir=800 : else : aciddir=700
					if acidatk<20 : pos acidx,acidy : gmode 2 : gcopy 13,aciddir,0,100,100
					if (acidatk>=20)&(acidatk<30) : pos acidx,acidy : gmode 2 : gcopy 13,aciddir,100,100,100
					if (acidatk>=30)&(acidatk<40) : pos acidx,acidy : gmode 2 : gcopy 13,aciddir,200,100,100
				}
				if acid2=1{;�_�U���a
					if lustdir=0 : aciddir=800 : else : aciddir=700
					if acidatk<15 : pos acidx,acidy : gmode 2 : gcopy 13,aciddir,0,100,100
					if (acidatk>=15)&(acidatk<20) : pos acidx,acidy : gmode 2 : gcopy 13,aciddir,100,100,100
					if (acidatk>=20)&(acidatk<25) : pos acidx,acidy : gmode 2 : gcopy 13,aciddir,200,100,100
				}
				if acid3=1{;�_�U���b
					if lustdir=0 : aciddir=800 : else : aciddir=700
					if acidatk<15 : pos acidx,acidy : gmode 2 : gcopy 13,aciddir,200,100,100
					
				}
				if (onaru=1)&(life>0){;���
					if keydir=1 {
						pos yajirux,yajiruy : gmode 2 : gcopy 13,1000,0,100,100
						yajirux-
						if yajirux=cx-80 : yajirux=cx-60
					}
					if keydir=4 {
						pos yajirux,yajiruy : gmode 2 : gcopy 13,1000,100,100,100
						yajirux+
						if yajirux=cx+185 : yajirux=cx+165
					}
					if keydir=2 {
						pos yajirux,yajiruy : gmode 2 : gcopy 13,900,0,100,100
						yajiruy-
						if yajiruy=cy-100 : yajiruy=cy-80
					}
					if keydir=8 {
						pos yajirux,yajiruy : gmode 2 : gcopy 13,900,100,100,100
						yajiruy+
						if onaona=0{
							if yajiruy=cy+180 : yajiruy=cy+160
						}
						else{
							if yajiruy=cy+220 : yajiruy=cy+200
						}
					}
				}
				if lustlimit=1{
					if lustball1=1 {
						pos Eball1x,Eball1y : gmode 2 : gcopy 17,700,100,100,100 
					}
					if lustball4=1{
						pos Eball4x,Eball4y : gmode 2 : gcopy 17,700,0,100,100 
					}
					if lustball5=1{
						pos Eball5x,Eball5y : gmode 2 : gcopy 17,700,0,100,100 
					}
					if lustball2=1 {
						pos Eball2x,Eball2y : gmode 2 : gcopy 17,700,100,100,100 
					}
					if lustatk>0 {
						pos Eballx,Ebally : gmode 2 : gcopy 17,700,0,100,100 
					}
					if lustball3=1{
						Eball3Ax=0.0 : Eball3Ay=0.0
						Eball3Bx=0.0 : Eball3By=0.0
						Eball3Cx=0.0 : Eball3Cy=0.0
						Eball3Dx=0.0 : Eball3Dy=0.0
						Eball3Ax=Eballr*cos(pi*Espin/360)+Eball3x : Eball3Ay=Eballr*sin(pi*Espin/360)+Eball3y
						Eball3Bx=Eballr*cos((pi*Espin/360)+(pi/2))+Eball3x : Eball3By=Eballr*sin((pi*Espin/360)+(pi/2))+Eball3y
						Eball3Cx=Eballr*cos((pi*Espin/360)+pi)+Eball3x : Eball3Cy=Eballr*sin((pi*Espin/360)+pi)+Eball3y
						Eball3Dx=Eballr*cos((pi*Espin/360)+(pi*3/2))+Eball3x : Eball3Dy=Eballr*sin((pi*Espin/360)+(pi*3/2))+Eball3y
						pos Eball3Ax,Eball3Ay : gmode 2 : gcopy 17,700,100,100,100
						pos Eball3Bx,Eball3By : gmode 2 : gcopy 17,700,100,100,100
						pos Eball3Cx,Eball3Cy : gmode 2 : gcopy 17,700,100,100,100
						pos Eball3Dx,Eball3Dy : gmode 2 : gcopy 17,700,100,100,100
						if lustball3d=0 : Espindir=-1 : else : Espindir=1
						Espin+=2.0*Espindir
						
					}
				}
			}
			if (lustlast=1)&(map=69){
				color 0,0,0
				pos lustlastx,lustlasty : gmode 4,,,160 : gcopy 15,800,135,200,200
				if lustlastf=30 : lustlastlast=600
				if lustlastf>=60 : lustlastlast=400 : lustlastf=-1
				lustlastf+
				color 255,255,255
			}
			;-----------------------�x���[�u�u
			if BOSSF=1{
				repeat 5
				if sizuku_on.cnt=1{
					pos sizukux.cnt,sizukuy.cnt : gmode 2 : gcopy 4,236,372,118,93
				}
				loop
				repeat enam
				if (floa.cnt=1)&(ehit.cnt=0)&(deadslaim=0){
					pos floax.cnt,230 : gmode 2 : gcopy 32,floafx.cnt,1024,185,256
					if floafp.cnt=0 : floafx.cnt=185
					if floafp.cnt=30 : floafx.cnt=370
					if floafp.cnt=60 : floafx.cnt=185 : floafp.cnt=-1
					floafp.cnt+
				}
				if (slaim.cnt=1)&(ehit.cnt=0){
					pos slaimx.cnt,400 : gmode 2 : gcopy 4,slaimfx.cnt,465,118,93
					if slaimfp.cnt=0 : slaimfx.cnt=118
					if slaimfp.cnt=20 : slaimfx.cnt=236
					if slaimfp.cnt=40 : slaimfx.cnt=118 : slaimfp.cnt=-1
					slaimfp.cnt+
				}
				loop
			}
				
			;-----------�^���V�t�F��
			
			if BOSSG=1 {
				if rusidam=1{
					rusiflash+
					rusidamp+
				}
				else{
					rusiflash=0
				}
				if rusidamp>50 : rusidamp=0 : rusidam=0
				if rusi_tpat=0 {
					if rusi_tdir=0 : rusi_tdirf=17 : else : rusi_tdirf=21
					if rusiflash\3=0 : pos rusitrx,275 : gmode 2 : gcopy rusi_tdirf,600,700,300,200
				}
				if (rusi_tpat=1)|(rusi_tpat=2){
					if rusi_tdir=0 : rusi_tdirf=17 : else : rusi_tdirf=21
					if rusiflash\3=0 : pos rusitrx,275 : gmode 2 : gcopy rusi_tdirf,rusi_tfx,0,300,200
					if rusi_tf1=10 : rusi_tfx=300
					if rusi_tf1=20 : rusi_tfx=600
					if rusi_tf1>=30 : rusi_tfx=0 : rusi_tf1=-1
					rusi_tf1+
				}
				if rusi_tpat=3{
					if rusi_tdir=0 : rusi_tdirf=17 : else : rusi_tdirf=21
					if rusiflash\3=0 : pos rusitrx,275 : gmode 2 : gcopy rusi_tdirf,rusi_tf2x,200,300,200
					if rusi_tf2=0 : rusi_tf2x=300
					if rusi_tf2=30 : rusi_tf2x=600
					if rusi_tf2=40 : rusi_tjumpoff=1 : rusi_tf2=-1 : muteki=1
					rusi_tf2+
				}
				if rusi_tpat=4{
					if rusi_tdir=0 : rusi_tdirf=17 : else : rusi_tdirf=21
					if rusiflash\3=0 : pos rusitrx,175 : gmode 2 : gcopy rusi_tdirf,rusi_tf3x,400,300,300
					if rusi_tatk_v_on=1 {
						if rusi_tdir=0 {
							pos rusitrx,175 : gmode 2 : gcopy 23,0,0,300,300
						}
						else {
							pos rusitrx,175 : gmode 2 : gcopy 23,300,0,300,300
						}
					}
					if rusi_tf3=0 : rusi_tf3x=0
					if rusi_tf3=49 : muteki=0 : mutekiT=0
					if rusi_tf3=50 : rusi_tf3x=300 : rusi_tatk_v_on=1
					if rusi_tf3=55 : rusi_tf3x=600 : rusi_tatk_v_on=0
					if rusi_tf3>=120 : rusi_tatkoff=1 : rusi_tf3=-1 : muteki=1 : mutekiT=50
					rusi_tf3+
				}
				if rusi_tpat=5{
					if rusi_tdir=0 : rusi_tdirf=17 : else : rusi_tdirf=21
					if rusiflash\3=0 : pos rusitrx,275 : gmode 2 : gcopy rusi_tdirf,rusi_tf4x,700,300,200
					if rusi_tatk_h_on=1 {
						if rusi_tdir=0 {
							pos rusitrx-200,275 : gmode 2 : gcopy 23,0,300,300,200
						}
						else {
							pos rusitrx+200,275 : gmode 2 : gcopy 23,300,300,300,200
						}
					}
					if rusi_tf4=0 : rusi_tf4x=0
					if rusi_tf4=39 : muteki=0 : mutekiT=0
					if rusi_tf4=40 : rusi_tf4x=300 : rusi_tatk_h_on=1
					if rusi_tf4=45 : rusi_tf4x=600 : rusi_tatk_h_on=0
					if rusi_tf4>=90 : rusi_tatkoff=1 : rusi_tf4=-1 : muteki=1 : mutekiT=50
					rusi_tf4+
				}
				if rusi_tpat=6{
					if rusi_ueatk_on=1 {			;���V�t�F����y����
					rusi_sitaatk_on=0
					pos rusitrx+100,0 : gmode 2 : gcopy 15,rusi_tf5x,0,105,179
					if rusi_tf5=0 : rusi_tf5x=0
					if rusi_tf5=10 : rusi_tf5x=106
					if rusi_tf5=20 : rusi_tf5x=212
					if rusi_tf5>=30 : rusi_tf5x=0 : rusi_tf5=-1
					if rusi_tf7>=40 : rusi_ueatk_on=0 : rusi_uekaraburi=1 : rusi_tf7=-1
					rusi_tf5+
					rusi_tf7+
					}
					if rusi_sitaatk_on=1 {			;���V�t�F�����y����
					rusi_ueatk_on=0
					pos rusitrx+100,276 : gmode 2 : gcopy 15,rusi_tf5x,180,105,179
					if rusi_tf5=0 : rusi_tf5x=0
					if rusi_tf5=10 : rusi_tf5x=106
					if rusi_tf5=20 : rusi_tf5x=212
					if rusi_tf5>=30 : rusi_tf5x=0 : rusi_tf5=-1
					if rusi_tf7>=40 : rusi_sitaatk_on=0 : rusi_sitakaraburi=1 : rusi_tf7=-1
					rusi_tf5+
					rusi_tf7+
					}
					if rusi_uekaraburi=1{;���V�t�F����U��
						rusi_sitakaraburi=0
						pos rusitrx+100,0 : gmode 2 : gcopy 17,rusi_tf6x,0,100,400
						if rusi_tf6=0 : rusi_tf6x=900
						if rusi_tf6=3 : rusi_tf6x=1000
						if rusi_tf6=6 : rusi_tf6x=1100 : rusi_tsyoku1_on=1
						if rusi_tf6=16 : rusi_tf6x=1000 : rusi_tsyoku1_on=0
						if rusi_tf6=19 : rusi_tf6x=900
						if rusi_tf6=22 {
							rusi_uekaraburi=0 : rusi_tsyoku+ : rusi_tf6=-1
							rusi_tr_rnd2=rnd(2)
							if rusi_tr_rnd2=0 : rusi_ueatk_on=1
							if rusi_tr_rnd2=1 : rusi_sitaatk_on=1
							if rusihp<=20 : rusitrx=cx+93-50-200+rnd(200) : else : rusitrx=cx+93-50-100+rnd(100)
						}
						rusi_tf6+
					}
					if rusi_sitakaraburi=1{;���V�t�F�����U��
						rusi_uekaraburi=0
						pos rusitrx+100,50 : gmode 2 : gcopy 21,rusi_tf6x,0,100,400
						if rusi_tf6=0 : rusi_tf6x=900
						if rusi_tf6=2 : rusi_tsyoku3_on=1
						if rusi_tf6=3 : rusi_tsyoku3_on=0
						if rusi_tf6=3 : rusi_tf6x=1000
						if rusi_tf6=6 : rusi_tf6x=1100 : rusi_tsyoku2_on=1
						if rusi_tf6=16 : rusi_tf6x=1000 : rusi_tsyoku2_on=0
						if rusi_tf6=19 : rusi_tf6x=900
						if rusi_tf6=22 {
							rusi_sitakaraburi=0 : rusi_tsyoku+ : rusi_tf6=-1
							rusi_tr_rnd2=rnd(2)
							if rusi_tr_rnd2=0 : rusi_ueatk_on=1
							if rusi_tr_rnd2=1 : rusi_sitaatk_on=1
							if rusihp<=20 : rusitrx=cx+93-50-200+rnd(200) : else : rusitrx=cx+93-50-100+rnd(100)
						}	
						rusi_tf6+
					}
				}
				if rusi_tpat=7{
					if rusirakka=1{
					pos rusitrx+100,rusifally : gmode 2 : gcopy 17,900,400,100,400
					if (rusi_tf8>=10)&(rusifall<4) : rusifall+ : rusi_tf8=-1
					rusi_tf8+
					rusifally+=rusifall*rusifall
						if rusifally>=56 {
							rusityakuti=1 : rusitf8=0 : rusifall=5 : rusirakka=0
							rusi_tr_rnd=rnd(3)
							if (rusi_tr_rnd=1)|(rusi_tr_rnd=2) : rusityakuti=0 : rusi_ttyaku=1
						}
					}
					if rusityakuti=1{
						pos rusitrx+100,56 : gmode 2 : gcopy 17,rusi_tf9x,400,100,400
						if rusi_tf9=0 : rusi_tf9x=900
						if rusi_tf9=10 : rusi_tf9x=1000
						if rusi_tf9=20 : rusi_tf9x=1100
						if rusi_tf9=30 : rusityakuti=0 : rusi_tf9=-1 : rusi_ttyaku=1
						rusi_tf9+
					}
				}
			}


				;----------------------���X�{�X
				if BOSSH=1{
					;--------------------�z�������w
					if leasgrav=1 {
						if leasgravdir=1 : pos leasgravx,140 : gmode 2 : gcopy 15,0,640,210,320
						if leasgravdir=0 : pos leasgravx,140 : gmode 2 : gcopy 15,210,640,210,320
					}
					;----------------------�L���[�u
					repeat enam
					if leascube.cnt=1{
						pos leascubex.cnt,160 : gmode 2 : gcopy 15,0,0,210,320
					}
					loop
					;----------------------���[�U�[
					if leas_rayA=1{
						pos cos(leas_rayAr*pi)*730.0+leas_rayAx,sin(leas_rayAr*pi)*730.0-30.0 : gmode 2,100,1500 : grotate 17,0,0,((leas_rayAr*pi)+(0.5*pi)),100,1500
						leas_rayAr-=0.0001
					}
					if leas_rayB=1{
						pos cos(-leas_rayBr*pi)*730.0+leas_rayBx,sin(leas_rayBr*pi)*730.0-30.0 : gmode 2,100,1500 : grotate 17,0,0,((leas_rayBr*pi)+(0.5*pi)),100,1500
						leas_rayBr+=0.0001
					}
					;-------------------�j
					repeat enam
					if leasneedle.cnt=1{
						pos leasneedlex.cnt,leasneedley.cnt : gmode 2 : gcopy 17,100,0,50,130
					}
					loop
					;--------------�{�[��
					repeat enam
					if leasball.cnt=1{
						pos leasballx.cnt,leasbally.cnt : gmode 2 : gcopy 17,150,0,50,50
					}
					loop
					;-----------------�����{�[��
					if deathball=1 {
						pos deathballx,323 : gmode 2,320,320 : grotate 15,630,0,0,deathballsize,deathballsize
						if deathballsize<=200 : deathball_on=1
						if deathballsize>0 : deathballsize-=10 : else  : deathball=0 : leas_mpat=8 : deathball_on=0
					}
					if leasdam=1{
						leasflash+
						leasdamp+
					}
					else {
						leasflash=0
					}
					if leasdamp>50 : leasdamp=0 : leasdam=0
					;----------�{�̂̕\��
						if (leas_mpat=0)|(leas_mpat=1)|(leas_mpat=4){
							if leas_mdir=0 : leasfy1=200 : else : leas_mdir=1 : leasfy1=100
							if leasflash\2=0 : pos leas_mx,leas_my : gmode 2 : gcopy 13,0,leasfy1,120,100
						}
						if (leas_mpat=2)|(leas_mpat=7) {
							pos leas_mx,leas_my : gmode 2 : gcopy 13,0,0,120,100
						}
						if leas_mpat=3 {
							if leasflash\2=0 : pos leas_mx,leas_my : gmode 2 : gcopy 13,leas_m3fx,0,120,100
							if leas_m3f=8 : leas_m3fx=240
							if leas_m3f=16 : leas_m3fx=360
							leas_m3f+
						}
						if leas_mpat=5 {
							if leas_mdir=0 : leasfy5=200 : else : leas_mdir=1 : leasfy5=100
							if leasflash\2=0 : pos leas_mx,leas_my : gmode 2 : gcopy 13,leasfx5,leasfy5,120,100
							if leasfp5=3 : leasfx5=240
							if leasfp5>=6 : leasfx5=120 : leasfp5=-1
							leasfp5+
						}
						if barrier=1 : color 0,0,0 : pos leas_mx+60,leas_my+50 : gmode 4,120,120,150 : grotate 13,360,100,0,180,180 : gmode 2 : color 255,255,255
					
				}
				
				;-----------------------------------�O�ɕ\������I�u�W�F�N�g
				if (life<=40)&(rusi_tatk_v_hit=1){;�܂��Ղ��p
					if dcou<2{
						if dir=0 {
							pos  cx+1+zureB,cy+zureC : gmode 2 : gcopy 50,deathf2x.dcou,256,185,256
						}
						if dir=1 {
							pos  cx+zureB,cy+zureC : gmode 2 : gcopy 50,deathf2x.dcou,768,185,256
						}
					}
				}
				if Bpate1=0 : Bfe1x=0
				if Bpate1=10 : Bfe1x=106
				if Bpate1=20 : Bfe1x=212
				if Bpate1>=30 : Bpate1=-1
				repeat enam
				if kroatk.cnt<140 : kroatk.cnt=140
				if kroatk.cnt=220 : kroatk.cnt=140
				loop
				Bpate1+
				repeat enam
				if ehit.cnt=1 : kroatk.cnt+=8
				loop
				

															;----------------------------------���V�t�F���p
				
				if rusi_on=1 {
					if rusidir=0 : rusify=0 : else : rusify=350
					if alert=0{
						if (rusimode=0)|(rusimode=1) {
							rusifx=0
							pos rusix,125 : gmode 2 : gcopy 14,rusifx,rusify,230,350
						}
						if (rusimode=2)|(rusimode=3) {
							pos rusix,125 : gmode 2 : gcopy 14,rusifx,rusify,230,350
							if rusifpat=30 : rusifx=230
							if rusifpat=40 : rusifx=460
							if rusifpat=60 : rusifx=690
							if rusifpat>=100 : rusifx=0 : rusifpat=-1
						rusifpat+
						}
						if rusimode=4{
						pos rusix,145 : gmode 2 : gcopy 14,920,rusify,230,350
						}
						
					}
					if alert=1 {
						pos rusix,125 : gmode 2 : gcopy 14,rusifx,rusify,230,350
						if rusifpat=20 : rusifx=230
						if rusifpat=30 : rusifx=460
						if rusifpat=40 : rusifx=690
						if rusifpat>=60 : rusifx=0 : rusifpat=-1
						rusifpat+
					}
																;------------------------���V�̕���
					if rusimode!=4{
						if rusidir=0 : pos rusix,125 : gmode 2 : gcopy 19,rusifx,rusify,230,350
						if rusidir=1 : pos rusix+50,125 : gmode 2 : gcopy 19,rusifx+50,rusify,230,350
					}
				}
															;--------------------------�g���b�v
				repeat enam
				if trap.cnt=1 {
					if hittrap.cnt=0 : pos trapx.cnt,400 : gmode 2 : gcopy 4,0,372,118,93 : else : pos trapx.cnt,400 : gmode 2 : gcopy 4,118,372,118,93
				}
				loop
				if kumo53mode=1{
					if (kumo53count>100)&(kumo53count<=180) {
						pos kumo53A,0 : gmode 2 : gcopy 24,742,0,106,180
						pos kumo53A,180 : gmode 2 : gcopy 24,742,0,106,180
						pos kumo53A,270 : gmode 2 : gcopy 24,742,0,106,180
						pos kumo53B,0 : gmode 2 : gcopy 24,742,0,106,180
						pos kumo53B,180 : gmode 2 : gcopy 24,742,0,106,180
						pos kumo53B,270 : gmode 2 : gcopy 24,742,0,106,180
						pos kumo53C,0 : gmode 2 : gcopy 24,742,0,106,180
						pos kumo53C,180 : gmode 2 : gcopy 24,742,0,106,180
						pos kumo53C,270 : gmode 2 : gcopy 24,742,0,106,180
					}
					if (kumo53count>180)&(kumo53count<=260) {
						pos kumo53A,0 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53A,180 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53A,270 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53B,0 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53B,180 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53B,270 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53C,0 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53C,180 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53C,270 : gmode 2 : gcopy 24,636,0,106,180
					}
					if kumo53count>260 : kumo53mode=0
					kumo53count+
				}
				;---------------������̃A�C�e��
				if throwout=1 {
					haveagra=0
					if throwhit=0 : pos thx,thy : gmode 2 : gcopy 20,thobx,thoby,40,40
					if thgrand=0 : thy-=4-thdown
					if thgrand=0 : thx+=thlen+sclob
					if thgrand=1 : thx+=sclob
					if (throwp=10)&(thy<420) : thdown+ : throwp=-1
					if thy>=420 : thgrand=1 : thdown=0 
					if (thgrand=1)&(throwp>200) : throwout=0 : throwp=-1 : thgrand=0 : thdown=0 : throwhit=0
					throwp+
				}
				;----------------�T���}���_�[����
				if equipB=1{
					if saradam=1{
						if (sarap>=0)&(sarap<3) : pos rusitrx+100,376 : gmode 2 : gcopy 31,0,0,100,100
						if (sarap>=3)&(sarap<6) : pos rusitrx+100,376 : gmode 2 : gcopy 31,100,0,100,100
						if (sarap>=6)&(sarap<9) : pos rusitrx+100,376 : gmode 2 : gcopy 31,200,0,100,100
						sarap+
					}
				}
				;----------------�E���f�B�[�l�X��
				if equipC=1{
					if eqhit=1{
						if (icep>=0)&(icep<5) : pos icex,276 : gmode 2 : gcopy 31,0,100,100,180
						if (icep>=5)&(icep<10) : pos icex,276 : gmode 2 : gcopy 31,100,100,100,180
						if (icep>=10)&(icep<20) : pos icex,276 : gmode 2 : gcopy 31,200,100,100,180
						icep+
					}
				}
									;----------------------���[�X�̃A�h�o�C�X

				if (map=21)&(cx<180)&(gkz=1) {
					redraw 1
					pos 30,20 : color 0,0,255 : font "�l�r ����",30
					leasad=rnd(14)
					gmode 0 : pos 20,10 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 30,20
					if leasad=0 : mes "�N�̕��������z���Əd���Ȃ肻������"
					if leasad=1 : mes "�����g�ɂ܂Ƃ�����j��\n�������Ȃ����������H\n����ɂ͋C�����Ȃ���"
					if leasad=2 : mes "�z���q���͐H��������\n�ȒP�ɂ͂͂���Ȃ�\n���S�ȏ��ŗ����~�܂��Ă���\n�W�����Ă͂�����"
					if leasad=3 : mes "�ǂɒ��ӂ���ƐV���������J���邩��\n����Ȃ���"
					if leasad=4 : mes "�t�[�h���߂��낤�Ƃ���̂͂�߂Ȃ���"
					if leasad=5 : mes "���ɔG�ꂽ�瑖��Ƃ���\n�̂����܂邵�A�����̂������Ȃ�"
					if leasad=6 : mes "�����ɂ����������ȕ����ɂ�\n����Ȃ��ق����g����\n�E�E�E\n�������Ȃ������̕������Ȃ����E�E�E"
					if leasad=7 : mes "�ǂ�����ĕ����Ă���̂����āH\n���ɂ��킩��Ȃ�"
					if leasad=8 : mes "���S�ł��Ȃ����Ŗ��h���ɂȂ�̂�\n���S�ł��Ȃ���"
					if leasad=9 : mes "�����ɂ͋C�����Ȃ����E�E�E"
					if leasad=10 : mes "���ɘb�Ȃ񂩒ʂ��Ȃ���\n���t�Ƃ����T�O������̂�����\n�^�킵���E�E�E"
					if leasad=11 : mes "���܂Ȃ������_�ɂ��Ă�\n���킵���������Ȃ�\n���ɂ͂��̌������Ȃ��̂��E�E�E"
					if leasad=12 : mes "����f������������\n�����炻�̂��͕̂n��Ȃ�\n�����瓹��ɗ��炴��𓾂Ȃ�"
					if leasad=13 : mes "�E�E�E�E�E�E"
					color 255,255,255 : font "�l�r �S�V�b�N",30
					wait 30 : gosub *read : wait 30 : redraw 0
				}
				if (map=65)&(cx<180)&(gkz=1) {
					redraw 1
					pos 30,20 : color 0,0,255 : font "�l�r ����",30
					leasad=rnd(16)
					gmode 0 : pos 20,10 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 30,20
					if leasad=0 : mes "�E�E�E�E�E�E�E�E�E�E�E"
					if leasad=1 : mes "���܂Ȃ��ȁE�E�E�E�E�E"
					if leasad=2 : mes "��ɒ��Ӑ[�����Ă���񂾁E�E�E\n�������b�Z�[�W�������\n�����Ƃ���͋M�d�Ȃ��̂�"
					if leasad=3 : mes "���ɏo���鎖�����������Ȃ�E�E�E"
					if leasad=4 : mes "�󒆂�Y��������\n�f�����������̂���̗͂�D�����\n����������炵��"
					if leasad=5 : mes "�A������̈����^����������̂��E�E"
					if leasad=6 : mes "�����ɂ����������ȕ����ɂ�\n����Ȃ��ق����g����\n�E�E�E\n�������Ȃ������̕������Ȃ����E�E�E"
					if leasad=7 : mes "�Ђ���Ƃ�����n���̕���\n�������܂��܂��Ȃ̂����ȁE�E�E"
					if leasad=8 : mes "�`������n�߂��E�E�E\n���̗͂�����܂ł��E�E�E"
					if leasad=9 : mes "���̕t�߂ɕ��̋��l�͂��Ȃ��悤����"
					if leasad=10 : mes "���ɘb�Ȃ񂩒ʂ��Ȃ���\n���t�Ƃ����T�O������̂�����\n�^�킵���E�E�E"
					if leasad=11 : mes "���܂Ȃ������_�ɂ��Ă�\n���킵���������Ȃ�\n���ɂ͂��̌������Ȃ��̂��E�E�E"
					if leasad=12 : mes "�����g�̂��Ƃ́E�E�E�E\n�����ƒm��K�v�����������E�E�E"
					if leasad=13 : mes "�E�E�E�E�E�E"
					if leasad=14 : mes "�N�������Ă���ȏ�\n���Ȃ��Ƃ������͒n���ł͂Ȃ���"
					if leasad=15 : mes "�ǂ��܂ōs���Ă��I���Ȃ���������H\n�����Ƃ���͌N�̕����i��ł��Ȃ���\n���炭���o�̂悤�Ȃ��̂��낤��\n�����ł��j�����̂��Ȃ���΁E�E�E"
					if leasad=16 : mes "�n���łȂ���΂����͈�̉�����\n�E�E�E�E�E����͒m��Ȃ���������"
					color 255,255,255 : font "�l�r �S�V�b�N",30
					wait 30 : gosub *read : wait 30 : redraw 0
				}
									;---------------------------������ʌn

				
				if (map=21)&(down=1) : downTtest+
				if (map=21)&(down=0) : downTtest=0
				;------------�e�X�g�p
				if dir=0 : spdir=2 : else : spdir=3
				if (map=12)&(cx>=350) : kokanhit=0
				if (map=8) {
					if down=1 : canmovL=-100
					if down=0 : canmovL=70
					if cx<70 : cantstand=1
					if cx>=70 : cantstand=0 : semaimiti=0
				}
				if (map=14) {
					if down=1 : canmovL=70
					if down=0 : canmovL=288
					if cx<286 : cantstand=1
					if cx>=286 : cantstand=0 : semaimiti=0
				}
				if (map=30) {
					if down=1 : canmovL=70
					if (down=0)&(cx>=292) : canmovL=490
					if (down=1)&(cx<=292) : canmovR=800
					if (sclp>60)&(sclp<80)&(down=0) : canmovR=270
					if (cx<=486)&(cx>=289)&(sclp>60) : cantstand=1
					if (cx>=486)|((cx<292)&(sclp<=60)) : cantstand=0
				}
				if (map=19) {
					if mapgimic=200 : buffer 5 : picload "room11a.bmp" : gsel 0 : kui19=0
					if mapgimic=300 : buffer 5 : picload "room11b.bmp" : gsel 0 : kui19=1 : mapgimic=-1
					mapgimic+
				}
				if map=40 {
					if (ev18=0)&(sclp<=316) : canmovL=300
					if (ev18=0)&(sclp>316) : canmovL=-30
					if  ev18=1 : canmovL=-30
				}
				
				if (map=35)|(map=21)|(map=30)|(map=117)|(map=118)|(map=119)|(map=123) : alertoff+;------------���V�̃A���[�g
				if ((map=35)|(map=21)|(map=30)|(map=117)|(map=118)|(map=119)|(map=123))&(alertoff>1000) : alert=0 : alertoff=0 : chase2=0
				if stage=6{
					if (alert=1)&(rusi_on=0) : rusilost+
					if rusilost>1000 : alert=0 : chase2=0 : rusilost=0
				}
				
				if (mapwater=1)&(down=1)&(nure=0) : buffer 2 : picload "nureseta.bmp" : buffer 3 : picload "nuresetb.bmp" : gsel 0 : nure=1 : kawaki=0
				if nure=1 : kawaki+;���ɔG���
				if (mapwater=1)&(nure=1)&(down=1) : kawaki=0
				if (mapwater=1)&(down=1) {
					if alert=0 : rusimiss=1
					ikitome+ 
				}
				if map=48 : {;���V����
					if bagT=0 {
						repeat enam
						bagflyx.cnt=0 : bagflyy.cnt=0 : bagfly_on.cnt=0
						loop
						repeat 3
						bagflyx.cnt=rnd(700) : bagflyy.cnt=rnd(150) : bagfly_on.cnt=1 : bagnam=3
						loop
					}
					
					bagflyfly=bagT\30
					if (bagT>0)&(bagflyfly=0)&(bagnam<98) : bagflyx.bagnam=rnd(700) : bagflyy.bagnam=rnd(150) : bagflyt.bagnam=rnd(200) : bagfly_on.bagnam=1 : bagnam+
				}
				if map=48 : bagT+
				if (map=48)&(bagT>=700)&(bagbag<98) : hitbag.bagbag=1 : bagbag+ : bagT=670
				repeat enam
				if (bagfly_on.cnt=1)&(map=48) {
				pos bagflyx.cnt,bagflyy.cnt : gmode 2 : gcopy 10,bagflyt.cnt,0,100,100
				if bagflyx.cnt>750 : bagflyx.cnt+=-40
				if bagflyx.cnt<-100 : bagflyx.cnt+=40
				if bagflyy.cnt>400 : bagflyy.cnt+=-40
				if bagflyy.cnt<-100 : bagflyy.cnt+=40
				bagflyx.cnt+=-30+rnd(61)
				bagflyy.cnt+=-30+rnd(61)
				}
				loop
				
				if (map=41)&(ev20=1)&(omoev=0)&(ev21=0) : omoT+;����
				if omoT>2500 : omoev=1 : omoT=0
				if ikitome>10 : life-1 : ikitugi+ : ikitome=0
				if (mapwater=1)&(down=0) : life+=ikitugi : ikitugi=0 : ikitome=0 : rusimiss=0
				if (mapwater=0)&(dash=1)&(nure=1) : kawaki+
				if kawaki>=5000 : nure=0 : kawaki=0 : buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp" : gsel 0
				if (map=30)|(map=39)|(map=14)|(map=8)|(map=38) : pos mappos,0 : gmode 2 : gcopy 10,0,0,800,600
				if (map=37)|(map=42)|(map=46)|(map=44) : pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600
				if press=1 : pos 0,pressY : gmode 2 : gcopy 10,0,0,800,600 : precount+
				if slow=1 : slowT-;-------------�X�e�ُ�@�X���[
				if slowT<=0 : slow=0
				if poison=1 : poisoncount+;-------------�Ŗ�
				if BOSSD=1 {				;-------------�x���t�F�S�[����̋֒f�̉ʎ�
					if (havekindan<3)&(mapitem=0) : kindant+
					if kindant>=800 : itemx=500+rnd(500)+mappos : mapitem=1 : itemy=440 : kindant=0
				}
				if BOSSD=1 {;----------------�A�O���I�t�H�e�B�X�@�x���t�F�S�[����
					if (agrara=0)&(haveagra=0) : agrat+
					if (agrat>=agrac)&(agrara=0)&(haveagra=0) : agrax=900+rnd(200)+mappos : agrara=1 : agrat=0 : agrac=600+rnd(500)
				}
				if (BOSSD=1)&(berudame>=0){	;----------------�x���t�F�S�[��_���[�W
					berubure=(berudame\2)*5
					berudame-
				}
				if map=81 {;--------------�x���[�u�u�p
					pos 0,40 : gmode 2 : gcopy 13,0,0,400,400
				}
				if (map=81)&(BOSSF=1){
					pos 230,370 : gmode 2,800,600 : grotate 10,0,0,0,(beruzex*beruzerate)-40+rnd(80),(beruzey*beruzerate)-40+rnd(80)
					beruzerate+=0.3
					if cx+113<(beruzex*beruzerate/2)+180 : dead=25 : gosub *event_dead
				}
				if (map=56)&(down=1) : down56=1;�}�b�v56�p
				if (map=56)&(down=0)&((cx>240)|(cx<200)) : down56=0

				if (map=61)&(itemK=1)&(sclp<1000)&(ev29=0) : ev29=1 : en.0=1 : etype.0=7 : enx.0=985;�A���m�E���o��
				;----------------�G���A�U�@���ƕX
				if (map=101)&(ev41=1) {
					if freezA_2=1{
						if (rusi_on=1)&(rusidir=1)&(freezAx+60<rusix+130)&(freezAx+125>rusix+60)&(rusidown=0) : rusimode=4 : ev46=1 : off41=1 : alert=0
						if (rusi_on=1)&(rusidir=0)&(freezAx+60<rusix+130)&(freezAx+125>rusix+60)&(rusidown=0) : rusimode=4 : ev46=1 : off41=1 : alert=0
					}
					if freezB_2=1{
						if (rusi_on=1)&(rusidir=1)&(freezBx+60<rusix+130)&(freezBx+125>rusix+60)&(rusidown=0) : rusimode=4 : ev46=1 : off41=1 : alert=0
						if (rusi_on=1)&(rusidir=0)&(freezBx+60<rusix+130)&(freezBx+125>rusix+60)&(rusidown=0) : rusimode=4 : ev46=1 : off41=1 : alert=0
					}
					if freezC_2=1{
						if (rusi_on=1)&(rusidir=1)&(freezCx+60<rusix+130)&(freezCx+125>rusix+60)&(rusidown=0) : rusimode=4 : ev46=1 : off41=1 : alert=0
						if (rusi_on=1)&(rusidir=0)&(freezCx+60<rusix+130)&(freezCx+125>rusix+60)&(rusidown=0) : rusimode=4 : ev46=1 : off41=1 : alert=0
					}
					if freezA_2=1{
						if (freezAx+60<cx+113)&(freezAx+125>cx+93) : deadfreez=1
					}
					if freezB_2=1{
						if (freezBx+60<cx+113)&(freezBx+125>cx+93) : deadfreez=1
					}
					if freezC_2=1{
						if (freezCx+60<cx+113)&(freezCx+125>cx+93) : deadfreez=1
					}
					freezAx=135+mappos
					freezBx=473+mappos
					freezCx=793+mappos
					color 0,0,0
					if freezA_1=1 : pos freezAx,75 : gmode 4,,,180 : gcopy 36,0,0,185,400
					if freezA_2=1 : pos freezAx,75 : gmode 4,,,180 : gcopy 36,185,0,185,400
					if freezB_1=1 : pos freezBx,75 : gmode 4,,,180 : gcopy 36,0,0,185,400
					if freezB_2=1 : pos freezBx,75 : gmode 4,,,180 : gcopy 36,185,0,185,400
					if freezC_1=1 : pos freezCx,75 : gmode 4,,,180 : gcopy 36,0,0,185,400
					if freezC_2=1 : pos freezCx,75 : gmode 4,,,180 : gcopy 36,185,0,185,400
					color 255,255,255
					if freezp=50 : freezA_1=1
					if freezp=55 : freezA_2=1 : freezA_1=0
					if freezp=125 : freezA_2=0
					if freezp=125 : freezB_1=1
					if freezp=130 : freezB_2=1 : freezB_1=0
					if freezp=200 : freezB_2=0
					if freezp=200 : freezC_1=1
					if freezp=205 : freezC_2=1 : freezC_1=0
					if freezp=275 : freezC_2=0 : freezp=-1
					freezp+
					gmode 2
				}
				if (map=108)&(ev42=1) {
					if flameA_3=1{
						if (rusi_on=1)&(rusidir=1)&(flameAx+50<rusix+130)&(flameAx+135>rusix+60)&(rusidown=0) : rusimode=4 : ev45=1 : off42=1 : alert=0
						if (rusi_on=1)&(rusidir=0)&(flameAx+50<rusix+130)&(flameAx+135>rusix+60)&(rusidown=0) : rusimode=4 : ev45=1 : off42=1 : alert=0
					}
					if flameB_3=1{
						if (rusi_on=1)&(rusidir=1)&(flameBx+50<rusix+130)&(flameBx+135>rusix+60)&(rusidown=0) : rusimode=4 : ev45=1 : off42=1 : alert=0
						if (rusi_on=1)&(rusidir=0)&(flameBx+50<rusix+130)&(flameBx+135>rusix+60)&(rusidown=0) : rusimode=4 : ev45=1 : off42=1 : alert=0
					}
					if flameC_3=1{
						if (rusi_on=1)&(rusidir=1)&(flameCx+50<rusix+130)&(flameCx+135>rusix+60)&(rusidown=0) : rusimode=4 : ev45=1 : off42=1 : alert=0
						if (rusi_on=1)&(rusidir=0)&(flameCx+50<rusix+130)&(flameCx+135>rusix+60)&(rusidown=0) : rusimode=4 : ev45=1 : off42=1 : alert=0
					}
					if flameA_3=1{
						if (flameAx+50<cx+113)&(flameAx+135>cx+93) : deadflame=1
					}
					if flameB_3=1{
						if (flameBx+50<cx+113)&(flameBx+135>cx+93) : deadflame=1
					}
					if flameC_3=1{
						if (flameCx+50<cx+113)&(flameCx+135>cx+93) : deadflame=1
					}
					
					flameAx=840+mappos
					flameBx=505+mappos
					flameCx=185+mappos
					color 0,0,0
					if flameA_1=1 : pos flameAx,420 : gmode 2 : gcopy 36,555,0,185,80
					if flameA_2=1 : pos flameAx,340 : gmode 2 : gcopy 36,555,80,185,200
					if flameA_3=1 : pos flameAx,0 : gmode 2 : gcopy 36,370,0,185,500
					if flameB_1=1 : pos flameBx,420 : gmode 2 : gcopy 36,555,0,185,80
					if flameB_2=1 : pos flameBx,340 : gmode 2 : gcopy 36,555,80,185,200
					if flameB_3=1 : pos flameBx,0 : gmode 2 : gcopy 36,370,0,185,500
					if flameC_1=1 : pos flameCx,420 : gmode 2 : gcopy 36,555,0,185,80
					if flameC_2=1 : pos flameCx,340 : gmode 2 : gcopy 36,555,80,185,200
					if flameC_3=1 : pos flameCx,0 : gmode 2 : gcopy 36,370,0,185,500
					color 255,255,255
					if flamep=90 : flameA_1=1
					if flamep=95 : flameA_2=1 : flameA_1=0
					if flamep=100 : flameA_3=1 : flameA_2=0
					if flamep=200 : flameA_3=0 : flameA_1=1
					if flamep=205 : flameA_1=0
					if flamep=120 : flameB_1=1
					if flamep=125 : flameB_2=1 : flameB_1=0
					if flamep=130 : flameB_3=1 : flameB_2=0
					if flamep=230 : flameB_3=0 : flameB_1=1
					if flamep=235 : flameB_1=0
					if flamep=150 : flameC_1=1
					if flamep=155 : flameC_2=1 : flameC_1=0
					if flamep=160 : flameC_3=1 : flameC_2=0
					if flamep=260 : flameC_3=0 : flameC_1=1
					if flamep=265 : flameC_1=0 : flamep=-1
					flamep+
				}
				if (map=120)&(ev47=0){
					pos 800+mappos,175 : gmode 2 : gcopy 17,0,400,300,300
				}
				
				
				;------------------�G���A�S�Ԃ�����
				if (from61=1)&(sclp>=445) : canmovR=270
				if (from61=1)&(sclp<445) : canmovR=800
				if (from61=1)&(sclp<=45) : canmovL=300
				if (from61=1)&(sclp>=45) : canmovL=0
				if (from58=1)&(sclp<=765) : canmovL=300
				if (from58=1)&(sclp>765) : canmovL=0
				if (map=68)&(ev30=0)&(itemK=1) : wait 50 : pos 0,0 : color 255,255,255 : mes "�^�J�̒Z������������Ă���E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0 : ev30=1		;������L�E�o
				if (map=74)&(sclp<=90) : canmovL=300
				if (map=74)&(sclp>90) : canmovL=70
				if (map=73)&(sclp<=90) : canmovL=300
				if (map=73)&(sclp>90) : canmovL=70
				;-------------------�{�X�^�C�}�[
				if beruflash>=1 : beruflash- : pos 0,0 : gmode 0 : gcopy 9,0,0,800,600
				if poisoncount>=50 : life- : poisoncount=0
				if BOSSF=1: guruT-
				if BOSSB=1 : Thyouji= satTime/100
				if BOSSC=1 : Thyouji= mamoTime/100
				if (BOSSE=1)&(lustlimit=1) : Thyouji= lustT/100
				if BOSSF=1 : Thyoji= guruT/100
				if tosenbo=1 : pos 0,0 : gmode 2 : gcopy 21,0,0,800,600
				if (BOSSB=1)&(satTime>2001)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,255,255 :  mes Thyouji
				if (BOSSB=1)&(satTime<=2001)&(sattime>1001)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,255,0 :  mes Thyouji
				if (BOSSB=1)&(sattime<=1001)&(satTime>0)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,0,0 :  mes Thyouji
				if (BOSSC=1)&(mamoTime>3001)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,255,255 :  mes Thyouji
				if (BOSSC=1)&(mamoTime<=3001)&(mamotime>1001)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,255,0 :  mes Thyouji
				if (BOSSC=1)&(mamotime<=1001)&(mamoTime>0)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,0,0 :  mes Thyouji
				if (BOSSE=1)&(lustlimit=1)&(lustT>2001)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,255,255 :  mes Thyouji
				if (BOSSE=1)&(lustlimit=1)&(lustT<=2001)&(lustT>1001)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,255,0 :  mes Thyouji
				if (BOSSE=1)&(lustlimit=1)&(lustT<=1001)&(lustT>0)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,0,0 :  mes Thyouji
				if (BOSSF=1)&(guruT>0)&(life>0) : pos 0,0 : font "�l�r �S�V�b�N",50 : color 255,0,0 :  mes Thyoji
				if (press=1)&(cx>590) : pos 0,0 : color 255,255,255 :  mes "�����߂�ꂽ�I"
				if (map=8)&(cx>600) : pos 0,0 : color 255,255,255 :  mes "�����߂肽���Ȃ�"
				
				if (map=8)&(cx>600)&(gkz=1) : tes2+ : wait 30 : gosub *read : wait 30;�e�X�g�p
				
				if (map=7)&(cx>700) : pos 0,0 : color 255,255,255 :  mes "�Ȃ����J���Ȃ�"
				if (map=15)&(cx<75) : pos 0,0 : color 255,255,255 :  mes "�����J���Ȃ�"
				if (map=33)&(cx<350)&(cx>=320)&(gkup=1) : pos 0,0 : color 255,255,255 : mes "�������������Ă��ĊJ���Ȃ�" : redraw 1 : wait 50 : redraw 0;�������ڂP
				if (map=33)&(cx<320)&(cx>=190)&(gkup=1) : pos 0,0 : color 255,255,255 : mes "�����������Ă��ĊJ���Ȃ�" : redraw 1 : wait 50  : redraw 0
				if (alert=0)&(map=33)&(cx<190)&(cx>=130)&(gkup=1)&(hiding=0) : pos 0,0 : color 255,255,255 :  mes "�K�v���Ȃ����肽���Ȃ�" : redraw 1 : wait 50 : redraw 0
				if (alert=1)&(map=33)&(cx<190)&(cx>=130)&(gkup=1)&(hiding=0) : pos 0,0 : color 0,0,0 : hiding=1 :  boxf 0,0,800,600 : redraw 1 : buffer 5 : picload "room21b.bmp" : gsel 0 : gkup=0 : wait 30 : stun=2 : rusiact=1 : color 255,255,255 : redraw 0
				if (gkup=1)&(hiding=1) : rusimiss=0 : pos 0,0 : color 0,0,0 : hiding=0 :  boxf 0,0,800,600 : redraw 1 : buffer 5 : picload "room21a.bmp" : gsel 0 : gkup=0  : wait 30 : stun=0 : color 255,255,255 : redraw 0
				if (rusix>800)&(hiding=1) : rusimiss=1 : missing=1
				if (rusix<450)&(missing=1) : alert=0 : rusimode=0 : missing=0
				if (map=33)&(alert=0) : alertoff+
				if (take1=0)&(rusi_on=1) {
					if (map=33)&(alertoff>1000) : rusimode=2 : rusiT=5000 : alertoff=-1 : take1=1
				}
				if (take1=2)&(rusi_on=1) {
					if (map=33)&(alertoff>1300)&(alertoff<=1400) : rusimode=2
					if (map=33)&(alertoff>1400)&(alertoff<=1700) : rusimode=0 : rusidir=0
					if (map=33)&(alertoff>1700) : rusimode=2 : rusiT=5000 : take1=3
				}
				if (take1=4)&(rusi_on=1){
					if (map=33)&(alertoff>1300)&(alertoff<=1500) : rusimode=3
					if (map=33)&(alertoff>1500)&(alertoff<=1800) : rusimode=0 : rusidir=0
					if (map=33)&(alertoff>1800) : rusimode=2 : rusiT=5000 : take1=5
				}
				if (take1=6)&(rusi_on=1) {
					if (map=33)&(alertoff>1300)&(alertoff<=1400) : rusimode=2
					if (map=33)&(alertoff>1400)&(alertoff<=1700) : rusimode=0 : rusidir=0
					if (map=33)&(alertoff>1700)&(alertoff<=2000) : rusimode=2
					if (map=33)&(alertoff>2000)&(alertoff<=2400) : rusimode=3 
					if (map=33)&(alertoff>2400)&(alertoff<=2600) : rusimode=0 : rusidir=0
					if (map=33)&(alertoff>2600) : rusimode=2 : rusiT=5000 : take1=0
				}
				;------------------���[�X�ɍU��
				if burst=1{
					if (burstp>0)&(burstp<=130) : burst_on=1 : else  : burst_on=0
				}
				if burstp>0{
					if burstp=150 : burstsize=1600 : burstsize2=1200
					pos 400,300 : gmode 2,800,600 : grotate 31,0,0,0,burstsize,burstsize2
					if burstsize>800 : burstsize-=32 : burstsize2-=24
					 muteki=1 : mutekiT=1
				}
				burstp-
				if burstp<=0 : burst=0 : burst_on=0
				;---------------�I�[�u
				if BOSSH=1 {
					if (haveorb=0)&(orb=0)&(mana=0) : orbt+
					if (orbt>=orbc)&(haveorb=0)&(orb=0) : orbx=200+rnd(700)+mappos : orb=1 : orbt=0 : orbc=1000+rnd(1000)
				}
				if recover>0 : pos 0,0 : font "�l�r �S�V�b�N",30: color 255,255,255 :  mes "�̗͂��񕜂���"
				if mesA>0 : pos 0,0 : font "�l�r �S�V�b�N",30: color 0,0,255 :  mes "���͂��͊����Ă���E�E�E" : color 255,255,255
				if mesB>0 : pos 0,0 : font "�l�r �S�V�b�N",30: color 0,0,255 :  mes "���͂��[����" : color 255,255,255
				if map=122 : stmn=1000
				if gold>0 : stmn=1000 : gold-
				if throwout=1 : throwstun+						;������̍d��
				if throwstun>=50 : stun=0 : throw=0 : throwstun=0
				recover-
				mesA-
				mesB-
				message-
				if map=15 : yakiniku+
				if precount>10 : precount=0 : pressY+
															;--------------------------�A�C�e���֌W�̕`��
				if mapitem=1 : itemx+=sclob
				if (agrara=1)&(BOSSD=1) : agrax+=sclob
				if (orb=1)&(BOSSH=1) : orbx+=sclob
				if mapitem=1 :	pos itemx,itemy : gmode 2 : gcopy 6,Icolor,0,8,8 : gmode 2 ;�}�b�v��̃A�C�e��
				if (agrara=1)&(BOSSD=1) : gmode 2 : pos agrax,400 : gcopy 20,120,80,40,40 : gmode 2 
				if (orb=1)&(BOSSH=1)&(life>0) : gmode 2 : pos orbx,400 : gcopy 7,240,240,80,80 : gmode 2 
														;--------------------------��O��
				if stage!=6{
														
				if (faceoff=0) {
					if (life>0)&(sumhit>0)|(wrapos>0)|(BosshitA=1)|(BosshitB=1)|(BosshitC=1)|(BosshitD=1)|(hittrapA=1)|(hittrapB=1)|(hittrapC=1)|(hittrapD=1)|(posses=1) {
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180
					}
					else {
						if life>30 : pos 600,10 : gmode 0 : gcopy 11,0,0,180,180
						if (life<=30)&(life>0) : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180
						if life<=0 {
							pos 600,10 : gmode 0 : gcopy 11,720,0,180,180
						}
					}
					if onaru=1 : pos 600,10 : gmode 0 : gcopy 11,180,180,180,180
					pos 600,10 : gmode 2 : gcopy 11,1080,360,180,180
					lifeline=25500-(255*life)
					if life=100 : lifeline=0
					if life<=0 : lifeline=25500
					color 0,0,0
					pos 600,10 : gmode 4,,,lifeline/100 : gcopy 11,1080,180,180,180 : color 255,255,255
					gmode 2
				}
				}
				if stage=6{
				if (faceoff=0) {
					if (life>0)&(sumhit>0)|(wrapos>0)|(BosshitA=1)|(BosshitB=1)|(BosshitC=1)|(BosshitD=1)|(hittrapA=1)|(hittrapB=1)|(hittrapC=1)|(hittrapD=1)|(posses=1) {
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180
					}
					else {
						if life>30 : pos 600,10 : gmode 0 : gcopy 11,360,540,180,180
						if (life<=30)&(life>0) : pos 600,10 : gmode 0 : gcopy 11,540,540,180,180
						if life<=0 {
							pos 600,10 : gmode 0 : gcopy 11,1080,720,180,180
						}
					}
					if onaru=1 : pos 600,10 : gmode 0 : gcopy 11,180,180,180,180
					pos 600,10 : gmode 2 : gcopy 11,1080,360,180,180
					lifeline=25500-(255*life)
					if life=100 : lifeline=0
					if life<=0 : lifeline=25500
					color 0,0,0
					pos 600,10 : gmode 4,,,lifeline/100 : gcopy 11,1080,180,180,180 : color 255,255,255
					gmode 2
				}
				}
					
															;--------------------------�A�C�e����
				if select_on=1 {
					if kisei=0 : pos 50,500 : gcopy 7,80,0,80,80
					if kisei=1 : pos 50,500 : gcopy 7,80,80,80,80
				}
					if item1>=1 : pos 140,500 : gcopy 7,icon1x,icon1y,80,80
					if item2>=1 : pos 230,500 : gcopy 7,icon2x,icon2y,80,80 
					if item3>=1 : pos 320,500 : gcopy 7,icon3x,icon3y,80,80 
					if item4>=1 : pos 410,500 : gcopy 7,icon4x,icon4y,80,80 
					if item5>=1 : pos 500,500 : gcopy 7,icon5x,icon5y,80,80 
					if item6>=1 : pos 590,500 : gcopy 7,icon6x,icon6y,80,80
					if item7>=1 : pos 680,500 : gcopy 7,icon7x,icon7y,80,80
					if (item1>=2)&(item1<10) : pos 148,500 : gcopy 7,(item1-1)*80,160,80,80
					if (item2>=2)&(item2<10) : pos 238,500 : gcopy 7,(item2-1)*80,160,80,80
					if (item3>=2)&(item3<10) : pos 328,500 : gcopy 7,(item3-1)*80,160,80,80
					if (item4>=2)&(item4<10) : pos 418,500 : gcopy 7,(item4-1)*80,160,80,80
					if (item5>=2)&(item5<10) : pos 508,500 : gcopy 7,(item5-1)*80,160,80,80
					if (item6>=2)&(item6<10) : pos 598,500 : gcopy 7,(item6-1)*80,160,80,80
					if (item7>=2)&(item7<10) : pos 688,500 : gcopy 7,(item7-1)*80,160,80,80
					;------------------�����i
					if now_equip>0 : pos 90*now_equip+50,500 : gcopy 7,0,80,80,80
														;--------------------------�A�C�e���I���̃t���[��
				if select_on=1 : pos redbox,500 : gcopy 7,0,0,80,80 : gmode 2 : select_on=0
				
				if (onaru=1)&(life>0)&(BOSSE=1){;�A�X���f�E�X�̖��
					if keydir=1 {
						pos yajirux,yajiruy : gmode 2 : gcopy 13,1000,0,100,100
						yajirux-
						if yajirux=cx-80 : yajirux=cx-60
					}
					if keydir=4 {
						pos yajirux,yajiruy : gmode 2 : gcopy 13,1000,100,100,100
						yajirux+
						if yajirux=cx+185 : yajirux=cx+165
					}
					if keydir=2 {
						pos yajirux,yajiruy : gmode 2 : gcopy 13,900,0,100,100
						yajiruy-
						if yajiruy=cy-100 : yajiruy=cy-80
					}
					if keydir=8 {
						pos yajirux,yajiruy : gmode 2 : gcopy 13,900,100,100,100
						yajiruy+
						if onaring=0{
							if yajiruy=cy+180 : yajiruy=cy+160
						}
						else{
							if yajiruy=cy+220 : yajiruy=cy+200
						}
					}
				}
														;--------------------------�Ó]�`��
				pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600
				gmode 2
				;--------------�`�ʂ̃X�L�b�v
		if (map=75)&(ev35=0) : goto *redskip
		if (map=98)&(ev40=0) : goto *redskip
		redraw 1
*redskip
		return
*patreset
	 fx = 0 : fy = 0 : patr=0 : patl=0 : patdl=0 : patdr=0 : patdar=0 : patdal=0
	 return

*hitoff
	stun=0 : stunoff=0 : hitkro=0 : equip=0
	throw=0 : thpower=0 : throw_on=0 : thgkz=0 : thgkx=0
	eqhit=0 : equipatk=0 : equipstun=50 : eqatkp=0
	repeat enam
	if ehit.cnt=1 : ehit.cnt=0 : estun.cnt=40+rnd(20)
	hitwarm.cnt=0
	hitpira.cnt=0
	hitdog.cnt=0
	hitkuti.cnt=0
	hitjairo.cnt=0
	hitmama.cnt=0
	hitmama2.cnt=0
	hitsizuku.cnt=0
	hitleasneedle.cnt=0
	hitleasball.cnt=0
	poscube.cnt=0
	loop
	muteki=1
	return
*event
												;----------------------------------�M�~�b�N�n
				if (ev52=0)&(map=1){
					redraw 0 : color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 100
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǂꂾ�����Ԃ��������̂��낤" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ڂ�����Ă���������\n�����͎��肪\n������悤�ɂȂ��Ă����E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����͐Α���̏����ȕ����E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������Â����E�E�E�E\n���߂��߂��Ă��ċC����������" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���͍���A�����Ǝ����̕�����\n�����̃x�b�h��\n�����������ӂƂ��\n����ɂ����͂��Ȃ̂�" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ŏ��͍��A����ȏ��ɂ���́I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�s���Ȃ���E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�s���Ȃ��Ⴞ�߂��E�E�E�E�E\n���̒��̒N����\n������ɂ��������Ă���E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����Ȃ���΁E�E�E�E\n�����n�܂�Ȃ�" : redraw 1 : wait 30 : gosub *read : redraw 0
					ev52=1
					redraw 0 : color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 200
					return
				}
				if (cx>490)&(cx<560)&(dir=1)&(down=1)&(gkz=1)&(ev1!1)&(map=1) {				;�ŏ��̃X�C�b�`
					ev1=1
					canmovL-=70
					redraw 0
					buffer 5 : picload "room1b.bmp" : gsel 0
					pos 0,0 : gcopy 5,0,0,800,600
					pos cx,cy : gcopy 3,370,256,185,256 : gmode 2
					pos 600,10 : gmode 0 : gcopy 11,180,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǂ��J�����I�H"
					redraw 1
					wait 30
					gosub *read
					redraw 0 
					pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����ŏo����̂��ȁE�E�E�H"
					redraw 1
					wait 30
					gosub *read
					gmode 2
					down=0
				}
				if (map=12)&(down=1)&(cx<500)&(cx>420)&(ev8=0)&(gkz=1) {  ;map12�ǂ���
					redraw 0
					buffer 5 : picload "room7b.bmp" : gsel 0
					pos 0,0 : gcopy 5,0,0,800,600
					if dir=0 : pos cx,cy : gmode 2 : gcopy 2,370,256,185,256 : else : pos cx,cy : gmode 2 : gcopy 3,370,256,185,256
					redraw 1
					wait 30 : ev8=1
				}
				if (map=34)&(down=1)&(cx>=500)&(ev14=0)&(gkz=1) {  ;map34�ǂ���
					redraw 0
					buffer 5 : picload "pass6b.bmp" : gsel 0
					pos -400,0 : gcopy 5,0,0,800,600
					if dir=0 : pos cx,cy : gmode 2 : gcopy 2,370,256,185,256 : else : pos cx,cy : gmode 2 : gcopy 3,370,256,185,256
					redraw 1
					wait 30 : ev14=1
				}
				if (map=20)&(cx<120)&(gkz=1)&(down=0)&(dir=0)&(itemE=0) : pos 0,0 : color 255,255,255 :  mes "����̏�ɎO�p�`�̂��ڂ݂�����" : wait 100
				if (cx<188)&(dir=0)&(down=0)&(map=3) {						;���S�P�F�Y
					dead=1 : gosub *event_dead
				}
				if (cx<320)&(cx>260)&(map=5)&(dash=0) {						;���S2�F���Ƃ���
					dead=2 : gosub *event_dead
				}
				if (map=6)&(cx<65)&(dir=0)&(down=0)&(gkz=1)&(ev3=0)&(press=0) {				;�v���X
					press=1 : redraw 0 : pressY=-500
					buffer 10 : picload "room4press.bmp" : gsel 0
					pos 0,pressY : gmode 2 : gcopy 10,0,0,800,600
					pos 0,0 : color 255,255,255 :  mes "�X�C�b�`��������"
					redraw 1
					wait 100
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,180,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�ςȉ����H"
					redraw 1
					wait 30
					gosub *read
					repeat	
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pressY+ : redraw 0 : pos 0,pressY : gmode 2 : gcopy 10,0,0,800,600
					redraw 1 : await 30
					if pressY<-400 : loop
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�H": wait 30
					gosub *read
					mes "�V�䂪�E�E�E�E�����Ă���I�H" : wait 30
					gosub *read
					repeat
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pressY+ : redraw 0: pos 0,pressY : gmode 2 : gcopy 10,0,0,800,600
					redraw 1 : await 30
					if pressY<-350 : loop
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E\n����b�I": wait 30
					gosub *read
					gmode 2
					life=28 : canmovR=600
				}
				if (map=6)&(cx<65)&(dir=0)&(down=0)&(gkz=1)&(ev3=0)&(press=1) : pos 0,0 : color 255,255,255 :  mes "�����������Ă��Ӗ����Ȃ�" : wait 50
				if (press=1)&(pressY>-200) : dead=3 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 :  goto *event_dead						;����
				if (map=7)&(ev4=0) {								;�C�x���g�@�����B�A�^���O
					stun=1 : a=1 : cx-
					if dash=1 : cx-=3
					if (cx<550)&(dash=0) {
						redraw 0
						buffer 10 : picload "envya.bmp"
						buffer 13 : picload "envyisi.bmp"
						buffer 15 : picload "makituki.bmp"
						buffer 17 : picload "kubinasi.bmp" : gsel 0
						pos -1200,0 : gmode 0 : gcopy 5,0,0,2000,600
						pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180					
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						redraw 1
						wait 100
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������₾��E�E�E\n����ȂƂ���": wait 30
						gosub *read
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������ɔ�������E�E�E": wait 30
						gosub *read
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���̌��������O��������E�E�E\n�����̂ɂ�": wait 30
						gosub *read
						dash=1 : point=0
					}
					if (cx<450) {
						repeat
						redraw 0
						pos -1200,0 : gmode 0 : gcopy 5,0,0,2000,600					
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos 580,276 : gmode 2 : gcopy 10,211,Bflamey,107,180
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��I�H"
						redraw 1 : point+ : await 1
						if point=3 : Bflamey=180
						if point=6 : Bflamey=360
						if point=106 : Bflamey=0
						if point<115 : loop
						point=0
						ehead=-540
						repeat
						redraw 0
						pos -1200,0 : gmode 0 : gcopy 5,0,0,2000,600					
						pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
						if point<13 : pos cx+57,ehead : gmode 2 : gcopy 10,0,0,106,540 : else : pos cx+57,ehead : gmode 2 : gcopy 10,106,0,106,540
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����������I�H"
						redraw 1 : point+ : await 1
						if point=3 : ehead+=90
						if point=6 : ehead+=90
						if point=9 : ehead+=90
						if point=12 : ehead+=90
						if point=100 : ehead-=180
						if point=103 : ehead-=180 : ehead=-540
						if point<105 : loop
						point=0
						wait 200
						redraw 0
						pos -1200,0 : gmode 0 : gcopy 5,0,0,2000,600			
						pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						redraw 1
						wait 100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E���́I�H": wait 30
						gosub *read
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����₾�E�E�E�E\n�|���悧�I": wait 30
						gosub *read
						dash=0 : a=0 : ev4=1 : stun=0 : BOSSA=1 : bossmode=1
					}
					gmode 2
					redraw 0
				}
				if (map=14)&(ev7=0) {						;���V�t�F���ƑΖ�
					stun=1 : a=1 : cx-
					if dash=1 : cx-=3
					if (cx<=550)&(dash=0)&(down=0) {
						redraw 0 : faceoff=1
						buffer 19 : picload "ono.bmp" : gsel 0
						buffer 13 : picload "onoatk.bmp": gsel 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,768,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ������I�H": redraw 1 : wait 30
						gosub *read
						redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E���I�H\n���̕����E�E�E�E�I�H": redraw 1 : wait 400
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,185,0,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600 : redraw 1 : wait 5
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,1024,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E\n��������������": redraw 1 : wait 400
						gosub *read
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,1024,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�H": redraw 1 : wait 30
						gosub *read
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,1024,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�N������E�E�E�E�I�H": redraw 1 : wait 30
						gosub *read : dash=1
					}
					if cx<=290 : dash=0 : down=1
					if cx<100 {
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,555,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						redraw 1 : wait 200 : rusix=800 : rusiy=106 : rusifx=0
						redraw 0
						pos rusix,rusiy : gmode 2 : gcopy 14,0,0,230,350
						pos rusix,rusiy : gmode 2 : gcopy 19,0,0,230,350
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,555,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos rusix,rusiy : gmode 2 : gcopy 14,rusifx,0,230,350
						pos rusix,rusiy : gmode 2 : gcopy 19,rusifx,0,230,350
						redraw 1
						if rusipat=30 : rusifx=230
						if rusipat=40 : rusifx=460
						if rusipat=60 : rusifx=690
						if rusipat=100 : rusifx=0 : rusipat=-1
						if (rusipat>40)&(rusipat<80) : rusix-=2
						rusipat+
						await 1
						if rusix<350 : break
						loop
						rusifx=0
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,555,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos rusix,rusiy : gmode 2 : gcopy 14,rusifx,0,230,350
						pos rusix,rusiy : gmode 2 : gcopy 19,rusifx,0,230,350
						rusipat=0 : rusifx=0 : rusiy=56 : stocA=rusix
						wait 200
						repeat 600
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos rusix-45,rusiy : gmode 2 : gcopy 13,rusifx,0,300,400
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�Ђ����E�E�E�E�j" : redraw 1						
						if rusipat=8 : rusifx=300
						if rusipat=10 : rusifx=600 : rusix-45
						if rusipat=20 : rusifx=0 : rusipat=-1 : rusix+45
						rusipat+
						await 1
						loop
						redraw 0
						rusix=stocA : rusifx=0 :rusiy=106
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,555,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos rusix,rusiy : gmode 2 : gcopy 14,rusifx,0,230,350
						pos rusix,rusiy : gmode 2 : gcopy 19,rusifx,0,230,350
						rusipat=0 : rusifx=0
						wait 200
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,555,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos rusix,rusiy : gmode 2 : gcopy 14,rusifx,350,230,350
						pos rusix+50,rusiy : gmode 2 : gcopy 19,rusifx+50,350,230,350
						redraw 1
						if rusipat=30 : rusifx=230
						if rusipat=40 : rusifx=460
						if rusipat=60 : rusifx=690
						if rusipat=100 : rusifx=0 : rusipat=-1
						if (rusipat>40)&(rusipat<80) : rusix+=2
						rusipat+
						await 1
						if rusix>900 : break
						loop
						rusifx=0 : rusipat=0
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,555,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ȃ񂾂����́H\n���́E�E�E" : redraw 1 : wait 30
						gosub *read
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,555,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���̂������E�E�E�E\n����ȍ������Ƃ��E�E�E�H" : redraw 1 : wait 200
						gosub *read
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,555,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����ɂ��܂�����E�E�E\n�E�E�E�E��������ȕ��ɂ��ꂿ�Ⴄ�́H" : redraw 1 : wait 200
						gosub *read
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾���E�E�E�E\n����Ȃ̂��₾�悧�E�E�E\n�����E�E�E�Ђ����E�E�E�E" : redraw 1 : wait 30
						gosub *read
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���킢�悧�E�E�E�E\n���ꂩ���������ɂ��Ă悧" : redraw 1
						wait 300
						color 0,0 : boxf 0,0,800,600 : dir=1 : cantstand=1 : stun=0 : ev7=1 : faceoff=0
						wait 200
					}					
				}
				if (map=21)&(ev10=0) {
					a=4 : dir=1 : cx+
					if cx>400 {
						buffer 2 : picload "wseta.bmp" : gsel 0 : buffer 3 : picload "wsetb.bmp" : gsel 0
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�܂��E�E�E�E�����Ă�E�E�E" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������ǂ��܂ōs������\n��������o����́E�E�E�H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����₾�E�E�E�E�A�肽���悤" : redraw 1
						wait 300 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�A��^���̂�������" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : redraw 1 : wait 30 : redraw 0 : color 0,0,0
						pos 170,200 : gmode 4,,,100 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : wait 30 : redraw 0
						pos 170,200 : gmode 4,,,150 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : wait 30 : redraw 0
						pos 170,200 : gmode 4,,,200 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : wait 30 : redraw 0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : wait 30 : redraw 0
						wait 200 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�N�͐�j�i�ރV���Ȃ���" : redraw 1 : redraw 0
						wait 200
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,768,185,256 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1 : wait 30 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E���Ȃ��ł��I�I�I\n�₾�I�����₾���I" : redraw 1
						wait 50 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���������Ȃ���\n���͌N�Ɋ�Q�����������͂Ȃ���" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E����Ȃ̐M���Ȃ��I" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��������Ė��f�����Ă����āE�E�E\n�����E���ĐH�ׂ����Ȃ񂾁I" : redraw 1
						wait 50 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�M���Ȃ��̂����H\n�܂����R���낤���E�E�E�E" : redraw 1
						wait 30 : gosub *read : redraw 0 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,180,0,60,100 : redraw 1,170,200,60,100 : wait 10 : redraw 0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "��������o�邽�߂̕��@��\n���͒m���Ă���\n������M�������͂Ȃ������H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�I\n���E�E�E�E�A���́H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�M���邩�ǂ����͌N�̏��肾����" : redraw 1
						wait 30 : gosub *read : wait 300 :redraw 0 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,180,0,60,100 : redraw 1,170,200,60,100 : wait 10 : redraw 0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E\n�{���ɁE�E�E\n�{���ɂ킽���ɉ������Ȃ��H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���Ȃ��E�E�E�Ƃ�������\n�ł��Ȃ��ƌ�����������������" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���͌N�ɉ������邱�Ƃ͂ł��Ȃ�\n��������S���Ȃ���" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E���������E�E�E�E" : redraw 1
						wait 30 : gosub *read : wait 200 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������E�E�E�E\n�ǂ������炢�����킩��Ȃ�����E�E�E" : redraw 1
						wait 30 : gosub *read : wait 300 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����Ȕ��f��" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ⴀ�����āE�E�E�E\n�ǂ������玄�E�E�E�E�A���́H\n�������A���́H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������E�E�E�́A�c�O�Ȃ��疳������" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "��������o��ׂɂ́A���̖��{�̈�ԉ�\n�ɂ��镔���܂ōs���Ȃ��Ă͂Ȃ�Ȃ�" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E���ꂶ�Ⴀ�A�܂��i�܂Ȃ���\n���߂Ȃ񂾁E�E�E" : redraw 1
						wait 30 : gosub *read : redraw 0 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,180,0,60,100 : redraw 1,170,200,60,100 : wait 10 : redraw 0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����������̂�ł͂Ȃ���" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������A�����܂ŒH�蒅���ׂɂ�\n�w���_�x��ނ���\n�����Ȃ��Ă͂Ȃ�Ȃ���" : redraw 1
						wait 30 : gosub *read : wait 100 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�܁E�E�E����E�E�E�E�H" : redraw 1;��Ƃ�u�܁E�E�E����E�E�E�E�H�v
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�N�����Ő[���ւƒH�蒅���̂�\n�W����ׂ̑��݂���\n���ꂪ��̉��Ȃ̂����ɂ�������񂪂�" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�S���łV�̂����͂�����\n�N�͂��łɂQ�ނ��Ă����" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����Ȃ́H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����ȎւƐԂ����l���������낤�H\n���ꂾ��\n���ꂪ���_" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����Ȃ̂��܂��T�C������́I�H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���̒ʂ�\n�����ČN�͂������܂�\n�ނ��Ă����Ȃ��Ă͂Ȃ�Ȃ�\n��l�ł�" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��l�ł��āE�E�E�E\n����l�ł����́I�H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������낤�H\n���͌N�ɉ������邱�Ƃ͂ł��Ȃ�\n�ǂ��Ӗ��ł������Ӗ��ł���" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,768,185,256 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1 : wait 30 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�I�s�������Ȃ��I\n����Ȃ̂�����΂ɂ₾�I" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���ł��s������\n�N�ɑI�����͂Ȃ��͂�������" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,0,256,185,256 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1 : wait 30 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�I�₾�I�₾�I\n�����|���̂₾���[�[�[�[�I" : redraw 1
						wait 30 : gosub *read : wait 300 :redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�ǂ����Ă����Ȃ񂾂�" : redraw 1
						wait 30 : gosub *read : redraw 0 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,180,0,60,100 : redraw 1,170,200,60,100 : wait 10 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E\n�₾�E�E�E�E" : redraw 1
						wait 30 : gosub *read : wait 300 :redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���ꂶ�Ⴀ����Ȃ炾" : redraw 1
						wait 30 : gosub *read : wait 100 :redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�I\n�܁E�E�E�E�҂��Ă�I\n�ǂ����֍s�����Ⴄ�́I�H" : redraw 1
						wait 30 : gosub *read :redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����\n�N�����߂Ă���Ȃ�\n���������ɂ��闝�R���Ȃ�����ȁE�E�E" : redraw 1
						wait 30 : gosub *read : wait 200 :redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�܁E�E�E�E�E�҂��āI" : redraw 1
						wait 30 : gosub *read :redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�s���Ȃ��ł�I��l�ɂ��Ȃ��ŁI" : redraw 1
						wait 30 : gosub *read :redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���͊�]�������Ă��Ȃ��҂ɂ�\n�������Ȃ���" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�N���쐂�ꎀ�ʗl�����Ă�������\n�C���œ��邾��������" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,768,185,256 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�s���܂��I�s��������E�E�E�E\n������E�E�E�E" : redraw 1
						wait 30 : gosub *read : wait 200 :redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��l�ɂ��Ȃ��ŁE�E�E�E�E" : redraw 1
						wait 30 : gosub *read : wait 150 : redraw 0 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,180,0,60,100 : redraw 1,170,200,60,100 : wait 10 : redraw 0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : wait 150 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�s���񂾂ˁH" : redraw 1
						wait 30 : gosub *read : wait 300 :redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E����E�E�E�E" : redraw 1
						wait 30 : gosub *read :	wait 300 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�������Ă���" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�N���E�C�������Ȃ�����\n�N�ɂ͂��̔����ꂽ���{�ŋ����ʂĂ�\n�^�������c����Ă͂��Ȃ�" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���͌N�̗͂ɂȂ肽��\n�������ꂾ���Ȃ�" : redraw 1
						wait 30 : gosub *read : wait 300 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�܂��E�E�E�E�E�߂��Ă��Ă������́H" : redraw 1
						wait 30 : gosub *read :	wait 300 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���܂�Ȃ���\n���ł�����Ƃ���" : redraw 1
						wait 30 : gosub *read : wait 200 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����̏��Ɋ�Ȗ͗l�����邾�낤\n�����w�Ƃł��ĂԂ̂���" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���ꂪ���镔���ɂ͂��̉���������\n�����Ă���Ȃ��炵��" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����Ď��͋t��\n���ꂪ���镔�����m�ł���\n�s�����ł��Ȃ�" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��Ȃ��Ȃ����炱���ɖ߂��Ă����\n�����񂾂�" : redraw 1
						wait 30 : gosub *read : redraw 0 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,180,0,60,100 : redraw 1,170,200,60,100 : wait 10 : redraw 0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100 : redraw 1,170,200,60,100 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����������Ƃ�\n�����ɂ��ꂪ����Έ��S���Ă��܂�Ȃ�\n�t�ɁA�Ȃ���΋C�𔲂��Ă͂Ȃ�Ȃ�" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�킩�����E�E�E�E" : redraw 1
						wait 30 : gosub *read :	wait 300 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����ƋA�ꂽ�l���E�E�E\n�O�ɂ͂����񂾂��" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E�E�E�E\n��������" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ⴀ���E�E�E�E�E�s���E�E�E�E" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�撣��Ȃ���\n�N�Ȃ�ł��邳" : redraw 1
						wait 30 : gosub *read : wait 300 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : color 0,0,0
						pos 170,200 : gmode 4,,,250 : gcopy 26,120,0,60,100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,180,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,180,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ȃ��̖��O�́E�E�E�E�E���Č����́H" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������H\n���́E�E�E�E�E" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���[�X�Ƃ����҂�" : redraw 1
						wait 30 : gosub *read : wait 100 : redraw 0
						color 0,0,0 : boxf 0,0,800,600 : wait 100 : ev10=1
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255
						color 0,0,0 : boxf 0,0,800,600
						buffer 2 : picload "seta.bmp" : gsel 0 : buffer 3 : picload "setb.bmp" : gsel 0
						wait 100 : color 255,255,255
						stun=0 : leas3=1
					}
				}
				if (map=65)&(ev25=0){
					a=1 : cx- : dir=0
					if ev25_1=0{
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1
						wait 150
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1
						redraw 0 : font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����̔炪������n�߂��ȁE�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���͂�`�ɂ͍S���Ă����Ȃ����E�E�E\n������邾���Ő���t���E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���������h���Ȃ���Ⴂ�����E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,60,0,60,100 : redraw 1 : redraw 0
						wait 150
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���āE�E�E�E�������炪��肾�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���x�����͕K���E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						wait 100
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E�E�E" : redraw 1 : wait 80
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E�E�E\n�������E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						ev25_1=1
					}
					if cx<410{
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						wait 100
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,180,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E���[�X�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����A������E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						wait 100
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E���Ⴀ������������E�E�E\n���S���Ă����񂾂�ˁE�E�E\n���̉����͂��Ȃ��񂾂��" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "��������A���S���Ă���" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						wait 150
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 8,370,0,185,256 : pos 170,200 : gmode 2 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�|�������悧" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǂ����āE�E�E�E\n��������Ȗڂɂ���Ȃ�����\n�����Ȃ��́E�E�E�E�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�˂����[�X�E�E�E�E�������Ăǂ��Ȃ́H" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ���Ƃ��āE�E�E�E�����͒n���Ȃ́H" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 8,370,0,185,256 : pos 170,200 : gmode 2 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						wait 150
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�N�͒n���ɑƂ����l��\n�����������Ă����̂����H" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ĂȂ���I" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������������Ƃ�����\n���̂����ł����ɗ��Ȃ����Ⴂ���Ȃ�\n�Ȃ����񂾂�����d���Ȃ����Ƃ���\n�m��Ȃ��E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ł��E�E�E�E�E�ł���\n�������ĂȂ���E�E�E\n�����������Ƃ��ĂȂ��̂ɁE�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 8,370,0,185,256 : pos 170,200 : gmode 2 : gcopy 26,180,0,60,100 : redraw 1 : redraw 0
						wait 100
						buffer 2 : picload "wseta.bmp" : gsel 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�˂����[�X�E�E�E�E�E\n���Ȃ��͂ǂ�����\n����ȏ��ɂ���́H" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ���Ƃ��Ă��Ȃ������Ɠ����ŁE�E�E\n������肱���ɕ����߂�ꂽ�́H" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,120,0,60,100 : redraw 1 : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����A��������E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����Ă��Ȃ��͂�������o����@��\n�m���Ă���\n�E�E�E�Ȃ̂ɂ��Ȃ��͂܂������ɂ���" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�܂肠�Ȃ��́E�E�E�E\n���[�X�́E�E�E\n��������o�����Ă�\n�o���Ȃ��񂾂ˁE�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E�E\n�������E�E�E\n���Ⴀ���Ȃ��̌����Ă���]���āE�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,180,0,60,100 : redraw 1 : redraw 0
						wait 200
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�撣���E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,180,0,60,100 : redraw 1 : redraw 0
						wait 150
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E�E�E�E\n���܂Ȃ��ȁE�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : pos 170,200 : gmode 2 : gcopy 26,180,0,60,100 : redraw 1 : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "(��������A����@�����邾��\n���͂܂��}�V�Ȃ񂾁E�E�E)" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "(�|�����ǁE�E�E�E�E\n�������|�����ǁE�E�E�E\n�����������肵����_���Ȃ񂾁E�E�E�E)" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "(�����Ă킽���ɂ͂܂��E�E�E�E\n��]������񂾂���E�E�E�E�E)" : redraw 1 : wait 30 : gosub *read : redraw 0
						color 0,0,0 : boxf 0,0,800,600 : color 255,255,255
						ev25=1 : stun=0
						buffer 2 : picload "seta.bmp" : gsel 0
					}
				}
				if (map=95)&(ev39=0){
					buffer 3 : picload "wsetb.bmp" : gsel 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : pos 600,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : redraw 0
					wait 500
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����������悤����\n����͊�΂����������E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�ǂ������H��F���������E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : pos 600,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : redraw 0
					wait 300
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������񂪁E�E�E�E\n�b�����E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�݂�ȁE�E�E�E�݂�Ȃ���������\n����ŁE�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : pos 600,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : redraw 0
					wait 100
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�N�������̂�\n�ٌ`�ɕϖe������e�Ɩ��Ȃ̂��낤�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǂ����āE�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					buffer 3 : picload "setb.bmp" : gsel 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : pos 600,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : redraw 0
					wait 100
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���ꂪ���̖��{�̐��������炾�E�E�E\n�N���]�����邽�߂�\n���̂悤�Ȍ����������̂��낤" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E���Ⴀ�E�E�E�E\n����������͉��Ƃ��Ȃ��́H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�A�ꂽ��E�E�E�E\n�����Ɖ��񂾂��" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����Ƃ�" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : pos 600,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : redraw 0
					wait 100
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,180,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�悩�����E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : pos 600,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : redraw 0
					wait 100
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����A�s���Ȃ������I�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����������\n���������Ő[���ւƂ��ǂ蒅����E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ə����Ȃ񂾂ˁE�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : pos 600,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : redraw 0
					wait 200
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���肪�Ƃ�" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,180,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������܂ł��ꂽ�̂�\n���[�X�̂���������E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,180,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����A���[�X�����̑O��\n�����Ă���Ȃ�������E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,180,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����ƁA���͂����ƑO��\n�S�����߂Ă��Ƃ�����" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������ˁA���肪�Ƃ�����" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : pos 600,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : redraw 0
					wait 200
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E��ȂǕK�v�Ȃ���" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���́A�������̂��������Ƃ�\n���Ă��邾����" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����ł�������" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����A�����Ă���������������E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : wait 200
					ev39=1
				}
				if (map=97){
					redraw 0
					buffer 19 : picload "ono.bmp" : gsel 0
					buffer 13 : picload "onoatk.bmp": gsel 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1
					wait 300
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�₾�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1
					wait 100
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,rusifx,0,230,350
						pos rusix,125 : gmode 2 : gcopy 19,rusifx,0,230,350
						redraw 1
						if rusipat=30 : rusifx=230
						if rusipat=40 : rusifx=460
						if rusipat=60 : rusifx=690
						if rusipat=100 : rusifx=0 : rusipat=-1
						if (rusipat>40)&(rusipat<80) : rusix-=1
						rusipat+
						if rusix<500 : break
						await 1
					loop
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�́E�E�E�E�E�����E�E�E�E\n�����Ȃ��ƁI�j" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 50
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,740,768,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���ŁE�E�E�E�I�H\n������������Ă���\n�͂��Ȃ̂ɁE�E�E�E�E�I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1
					repeat 
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,rusifx,0,230,350
						pos rusix,125 : gmode 2 : gcopy 19,rusifx,0,230,350
						redraw 1
						if rusipat=30 : rusifx=230
						if rusipat=40 : rusifx=460
						if rusipat=60 : rusifx=690
						if rusipat=100 : rusifx=0 : rusipat=-1
						if (rusipat>40)&(rusipat<80) : rusix-=2
						rusipat+
						if rusix<300 : break
						await 1
					loop
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E���E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���Ə�����\n������̂Ɂj" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���Ə�����\n����ȂƂ��납��A���̂Ɂj" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���Ə�����\n���̐������A���Ă���̂Ɂj" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���Ə����Ȃ̂�\n���Ə����Ȃ̂ɂ��I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 200
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix-45,70 : gmode 2 : gcopy 13,0,0,300,400 : redraw 1 : wait 200
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix-45,70 : gmode 2 : gcopy 13,300,0,300,400 : redraw 1 : wait 200
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos rusix-45,70 : gmode 2 : gcopy 13,300,0,300,400 : redraw 1 : wait 100
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������������������������I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos rusix-45,70 : gmode 2 : gcopy 13,300,0,300,400 : redraw 1 : wait 100 : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 5 : redraw 0
					boxf 0,0,800,600 : redraw 1 : wait 10
					burex=0 : burey=0
					repeat 100
					redraw 0
					pos 0+burex,0+burey : gmode 0 : gcopy 5,0,0,800,600
					pos cx+burex,cy+burey : gmode 2 : gcopy 8,185,256,185,256
					pos 180+burex,150+burey : gmode 2 : gcopy 26,120,0,60,100
					pos 180+burex,150+burey : gmode 2 : gcopy 26,120,100,120,100
					pos rusix-345+burex,70+burey : gmode 2 : gcopy 13,600,800,600,400 : redraw 1
					burex=-5+rnd(11)
					burey=-5+rnd(11)
					await 1
					loop
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,120,0,60,100
					pos 180,150 : gmode 2 : gcopy 26,120,100,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 200 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�ז��͂����Ȃ��E�E�E�E\n�܊p�����܂ŗ����̂�" : redraw 1 : wait 30 : gosub *read : redraw 0
					burex=0 : burey=0
					repeat 100
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,120,0,60,100
					pos 180+burex,150+burey : gmode 2 : gcopy 26,120,100,120,100
					pos rusix-345+burex,70+burey : gmode 2 : gcopy 13,600,800,600,400 : redraw 1
					burex=-3+rnd(7)
					burey=-3+rnd(7)
					await 1
					loop
					boxf 0,0,800,600 : redraw 1 : wait 10
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 200 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E���b�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�E�E�E�E�ǂ����Ă����ɁI�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������Ă���񂾁E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����s���Ȃ����A�����\n���ɂ��ׂ����Ƃł�����̂��H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "������������Ċ撣���Ă���̂�����\n�N������ɉ�����̂��؂Ƃ���\n���̂��낤�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�Ⴄ�����H" : redraw 1 : wait 30 : gosub *read : redraw 0
					
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 100 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ł��E�E�E�E���[�X���E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 100 : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���͎����ł͉����o���Ȃ�\n�Ⴆ�Ȃ̖]�ގ����������Ƃ��Ă���" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "������N�ɂ���������\n���̌����Ă��鎖�̈Ӗ���������ˁH" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 300 : redraw 0
					burex=0 : burey=0
					repeat 100
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180+burex,150+burey : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345+burex,70+burey : gmode 2 : gcopy 13,600,800,600,400 : redraw 1
					burex=-3+rnd(7)
					burey=-3+rnd(7)
					await 1
					loop
					buffer 2 : picload "wseta.bmp" : gsel 0
					buffer 3 : picload "wsetb.bmp" : gsel 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 100 : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 50 : redraw 0
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 3,fdax,768,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1
						patdar+
						cx+=4
							if fdax=925 {
								if patdar>6 : fdax=0 : patdar=0
							}
							else {
								if patdar>6 : fdax+=185 : patdar=0 
							}
					if cx>500 : break
					await 1
					loop
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 100 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ꏏ�ɋA�낤�I����ȂƂ��납��E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����ƁE�E�E�E\n�����Ɖ������@������͂�����I" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������E�E�E�E�E�E������I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 300 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����͑f�G�Ȏv�������E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 200 : redraw 0
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 3,fdax,768,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1
						patdar+
						cx+=4
							if fdax=925 {
								if patdar>6 : fdax=0 : patdar=0
							}
							else {
								if patdar>6 : fdax+=185 : patdar=0 
							}
					if cx>900 : break
					await 1
					loop
					burex=0 : burey=0
					repeat 100
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,120,0,60,100
					pos 180+burex,150+burey : gmode 2 : gcopy 26,0,200,120,100
					pos rusix-345+burex,70+burey : gmode 2 : gcopy 13,600,800,600,400 : redraw 1
					burex=-3+rnd(7)
					burey=-3+rnd(7)
					await 1
					loop
					boxf 0,0,800,600 : redraw 1 : wait 10
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,120,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 200 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�ꏏ�ɋA�낤�E�E�E�E��" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : pos 600,10 : gmode 0 : gcopy 11,360,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����A���ꂪ�ł����Ȃ�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 180,150 : gmode 2 : gcopy 26,0,100,60,100
					pos 180,150 : gmode 2 : gcopy 26,120,200,120,100
					pos rusix-345,70 : gmode 2 : gcopy 13,600,800,600,400 : redraw 1 : wait 200 : redraw 0
					burex=0 : burey=0 : burep=0
					repeat 100
					redraw 0
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600
					pos 0+burex,0+burey : gmode 0 : gcopy 5,0,0,800,600
					pos cx+burex,cy+burey : gmode 2 : gcopy 8,185,256,185,256
					pos 180+burex,150+burey : gmode 2 : gcopy 26,0,100,60,100
					pos 180+burex,150+burey : gmode 2 : gcopy 26,120,200,120,100
					pos rusix-345+burex,70+burey : gmode 2 : gcopy 13,600,800,600,400 : redraw 1
					burex=-burep+rnd((burep*2)+1)
					burey=-burep+rnd((burep*2)+1)
					burep+
					await 1
					loop
					redraw 0
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					pos 200,280 : color 255,255,255
					mes "�����A����'��]'�͌N�ɑ�����" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					pos 80,280 : color 255,255,255
					mes "���̗^�����E�C�ɑ΂��č��x�͌N���񂢂�Ԃ�" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					pos 150,280 : color 255,255,255
					mes "�Ō�̍Ŋ��܂ŗ͂̌��葖��Ȃ���" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					pos 300,280 : color 255,255,255
					mes "�����āE�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					pos 30,280 : color 255,255,255
					mes "�����āE�E�E���x�����A���ꂽ�^���ɏI�~�����E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0 : wait 500
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					pos 300,350 : gmode 2 : gcopy 26,60,100,60,100 : redraw 1
					pos 200,280 : color 255,255,255 : wait 300 : evefeed=0 : leasp=0
					repeat
					redraw 0
					color 0,0,0
					pos 0,0 : gmode 3,,,evefeed : gcopy 5,0,0,800,600
					pos 300,350 : gmode 2 : gcopy 26,60,100,60,100 : redraw 1
					if leasp>=5 : evefeed+ : leasp=-1
					await 1
					leasp+
					if evefeed>=256 : break
					loop
					wait 500
					pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					if savep.1<=4 : savep=5713276,5 : bsave "save.dat", savep
					wait 200 : map=98
				}
				if (map=98)&(ev40=0) {
					redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : wait 500
					buffer 5 : picload "room50a.bmp"
					buffer 2 : picload "setacore.bmp"
					buffer 3 : picload "setbcore.bmp"
					buffer 8 : picload "setccore.bmp"
					buffer 20 : picload "essmalla.bmp"
					buffer 11 : picload "facea.bmp"
					buffer 36 : picload "bress.bmp"
					buffer 50 : picload "maptatuco.bmp"
					buffer 51 : picload "freez.bmp"
					buffer 52 : picload "sumi.bmp"
					buffer 53 : picload "dice.bmp" : gsel 0 : color 255,255,255
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�E": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E����E�E�E�E�H\n���E�E�E�E": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�C���E�E�E�E�����Ă��́E�E�E�E�H": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����ȁE�E�E�E�E�E\n���̂܂ɁE�E�E�E�E�E": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 200
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�̂������E�E�E�E": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ⴀ�E�E�E�E���v�Ȃ񂾁E�E�E": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					color 0,0,0 : boxf 0,0,800,600 : color 255,255,255: redraw 1 : wait 200
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E�����s���Ȃ��ƁE�E�E": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������E�E�E�E�����������[�X��": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					cx=300
					color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 200
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 3,370,256,185,256 : redraw 1
					wait 150
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,0,768,185,256 : redraw 1
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��I�H": redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E�E���I�H\n���ł��I�H": redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ł���Ȏ��ɂȂ��Ă�́I�H": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,0,768,185,256 : redraw 1
					wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�H": redraw 1 : wait 30 : gosub *read : redraw 0
					rusix=900 : rusipat=0
					repeat 
					redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,0,768,185,256
					pos rusix,125 : gmode 2 : gcopy 14,rusifx,0,230,350
						pos rusix,125 : gmode 2 : gcopy 19,rusifx,0,230,350
						redraw 1
						if rusipat=30 : rusifx=230
						if rusipat=40 : rusifx=460
						if rusipat=60 : rusifx=690
						if rusipat=100 : rusifx=0 : rusipat=-1
						if (rusipat>40)&(rusipat<80) : rusix-=2
						rusipat+
						if rusix<600 : break
						await 1
					loop
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,0,768,185,256 
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180 : 
					pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E�I�I�I": redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������I�I�I�I": redraw 1 : wait 30 : gosub *read : redraw 0
					repeat
					redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,fdax,768,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1
						patdar+
						cx-=4
							if fdax=925 {
								if patdar>6 : fdax=0 : patdar=0
							}
							else {
								if patdar>6 : fdax+=185 : patdar=0 
							}
					if cx<=-200 : break
					await 1
					loop
					color 0,0,0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 200
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos 300,cy : gmode 4,,,180 : gcopy 28,0,0,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 40
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos 300,cy : gmode 4,,,180 : gcopy 28,0,0,185,256
					pos 200,cy : gmode 4,,,180 : gcopy 28,370,0,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 40
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos 300,cy : gmode 4,,,180 : gcopy 28,0,0,185,256
					pos 200,cy : gmode 4,,,180 : gcopy 28,370,0,185,256
					pos 50,cy : gmode 4,,,180 : gcopy 28,740,0,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 40
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos 300,cy : gmode 4,,,180 : gcopy 28,0,0,185,256
					pos 200,cy : gmode 4,,,180 : gcopy 28,370,0,185,256
					pos 50,cy : gmode 4,,,180 : gcopy 28,740,0,185,256
					pos 500,cy : gmode 4,,,180 : gcopy 28,0,256,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1 : wait 300 : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 100
					color 255,255,255
					point=630 : dir=0 : ev40=1
					buffer 5 : picload "pass25a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=400 : canmovL=70 : canmovR=800
					if drag1.8=0 : mapitem=1 : itemx=-230 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=99 : scl=1 : sclp=400 : sclM=400 : gendo=-400 : stage=6	 : itemnam=16 : gosub *getitem
				}
				if (map=71)&(ev34=0){
					redraw 0
					pos -176,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : redraw 1
					wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,0,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�H" : redraw 1 : wait 200 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,0,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������āE�E�E�E�E�E�E�E" : redraw 1 : wait 200 : redraw 0
					pos -176,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : redraw 1
					wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,0,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���́E�E�E�E�ƁH" : redraw 1 : wait 200 : redraw 0
					pos -176,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : redraw 1
					wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,0,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�E�E\n��" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,180,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�A���āE�E�E�E\n���ꂽ�񂾂��E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�O�X�b\n�|�������E�E�E�E�悧" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos -176,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : redraw 1
					wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 0,255,0 : mes "���I�[�H\n�������тł��Ă���[\n��������Ă������[��" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos -176,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : redraw 1
					wait 50
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,0,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����������E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,180,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����������̐����I" : redraw 1 : wait 30 : gosub *read : redraw 0
					ev34=1
				}
				if (map=75)&(ev35=0){
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					wait 50
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ǁE�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����͈�̉��������̂��낤�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�܂�Œn�������̂܂܌`�ɂ����l��\n�����̖��{" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					wait 200
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�l���邾�����ʂ�������Ȃ�\n�����ƁE�E�E\n���ɂ͈ꐶ�킩��Ȃ����ƂȂ̂��낤" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					wait 200
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������A�S�c��Ȃ̂́E�E�E\n���[�X�̎��E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��]���A�S�Ă���߂����Ă����������B��\n��]��^���Ă��ꂽ���݁E�E�E\n�����������E�C��^���Ă��ꂽ���݁E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�́E�E�E�E�E\n�����Ƃ��̔��Â����{�̒���\n�߂���������̂��낤���E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���̂悤��\n�s�K�ɂ����̒n���ւƑƂ��ꂽ�N����\n��]��^�������邽�߂�" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					wait 200
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E����\n�l����̂͂�߂ɂ��悤" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���́A�A���ė�����" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�|���������ǁA�ꂵ���������ǁE�E�E�E\n�S�����z���ċA���ė�����" : redraw 1 : wait 30 : gosub *read : redraw 0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���́E�E�E�E�E�E\n��������ɓ��ꂽ�񂾁I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					wait 200
					buffer 10 : picload "mama.bmp" : gsel 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����������I�������܂��I" : redraw 1 : wait 30 : gosub *read : redraw 0
					mamap=0 : mama2p=0 : mamafx=0 : mama2fx=555 : mama3p=0
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					if mama3p<400 : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : else : pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,210 : gmode 2 : gcopy 10,mamafx,512,185,256
					pos 444,210 : gmode 2 : gcopy 10,mama2fx,512,185,256
					if (mama3p>=400)&(mama3p<700){
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�E�E�E" 
					}
					if (mama3p>=1000)&(mama3p<1200){
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������E�E�E�E�E����E�E�E�E�E�H"
					}
					redraw 1
					if mamap=10 : mamafx=185
					if mamap=15 : mamafx=0 : mamap=-10+rnd(10)
					if mama2p=10 : mama2fx=740
					if mama2p=13 : mama2fx=925
					if mama2p=16 : mama2fx=555 : mama2p=-1
					mamap+
					mama2p+
					mama3p+
					if mama3p>=1230 : break
					await 1
					loop
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,210 : gmode 2 : gcopy 10,185,512,185,256 : redraw 1 : wait 400 : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,210 : gmode 2 : gcopy 10,370,512,185,256 : redraw 1 : wait 50 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,210 : gmode 2 : gcopy 10,370,512,185,256 : redraw 1 : wait 50 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�T�N���[�H\n���E�S�n���f�L�e�������[\n�n���N�I���e���b�V���[�C" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E����������E�E�E�E�E�H\n���E�E�E���Ă�́E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,210 : gmode 2 : gcopy 10,370,512,185,256 : redraw 1 : wait 200 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�T�N���[�H\n���E�S�n���f�L�e�������[\n�n���N�I���e���b�V���[�C" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�T�N���[�H\n�E�f���S�n���f�S�L�e�������[\n�n���N���N���e���b�V�V���[�C" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�T�O�N�����[�H\n���S�n�K�M���f�L����������������\n�I���O�M�f�Q�Q�Q���O�K���Q" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�O���J�����B���E���[�������T�C�H\n�������J�����W�����������B�����i�E�G\n�����K�X�C�A���������i�V�����n" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,210 : gmode 2 : gcopy 10,370,512,185,256 : redraw 1 : wait 200 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E�E�E�E\n���E�E�E�����Ă�́I�H\n����ɁE�E�E�E���E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E�E�́E�E�E�E�E�E���H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,210 : gmode 2 : gcopy 10,370,512,185,256 : redraw 1 : wait 300 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "���I������E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,200 : gmode 2 : gcopy 10,925,0,185,256 : redraw 1 : wait 50 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�ʖڂ���Ȃ�\n�b���͂���Ȃɂ��������q�Ȃ̂ɁE�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�z���g���ȃ^�͑ʖڂȎq�l\n�_�����i�R�R�R�W���i�C�R�W���i�C" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�G���n�R���i�j�I�C�V�C�R�i�m�j\n�i�m�R�i�C�j�m�R�W�i�j�j�j�j\n�i�J�j�G���m�~�Q�m�m���l�l" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "���G�R�n���i�m�j�l�t�N�w�t\n�Q�M�M���O�M�M�O�M\n�M�b�M�b�M�E�E�E\n�M�w�w�t�w�q�q�q�q�q�q" : redraw 1 : wait 30 : gosub *read : redraw 0
					mamap=0 : mamafx=925 : mama2p=0
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,200 : gmode 2 : gcopy 10,mamafx,0,185,256
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�L���n�n�n�n�n�n�n�n�n�n�n�n�n�n\n�n�n�n�n�n�n�n�n�n�n�n�n�n�n�n�n\n�n�n�n�n�n�n\n�n�\�\�\�n�\�\�\�n�\�\�\�q�\�\�\" : redraw 1
					
					if mamap=3 : mamafx=1110
					if mamap=6 : mamafx=925 : mamap=-4+rnd(4)
					mamap+
					mama2p+
					if mama2p>=400 : break
					await 1
					loop
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos 444,200 : gmode 2 : gcopy 10,925,0,185,256 : redraw 1 : wait 400 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�T�N���[�H\n���E�S�n���f�L�e�������[\n�n���N�I���e���b�V���[�C" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�T�N���[�H\n���E�S�n���f�L�e�������[" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r ����",30 : pos 30,20 : color 0,150,0 : mes "�A�i�^�E�E�E�K�E�E�E�S�E�E�E�n��" : redraw 1 : wait 30 : gosub *read : redraw 0
					mamap=0 : mamafx=0 : mamax=444
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos mamax,200 : gmode 2 : gcopy 10,mamafx,0,185,256 : redraw 1
					if mamap=30 : mamafx=185
					if mamap=40 : mamafx=370
					if mamap=60 : mamafx=0 : mamap=-1
					mamap+
					mamax-
					if mamax<=250 : break
					await 1
					loop
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos mamax,200 : gmode 2 : gcopy 10,925,0,185,256 : redraw 1 : wait 50 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�����[���I�I�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					ev35=1 : en.0=1 : etype.0=13 : enx.0=250 : endir.0=1 : estun.0=50 : en.0=1
				}
				if (map=34)&(ev19=0){
					rusi_on=1 : rusidir=0
					if nigero=0 {
					rusidir=0 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1
					wait 100
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 22,925,512,185,256
					pos rusix,125 : gmode 2 : gcopy 14,0,0,230,350
					pos rusix,125 : gmode 2 : gcopy 19,0,0,230,350 : redraw 1
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E�E�I�H" : redraw 1
					wait 30 : gosub *read
					wait 100
					redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ������I�H" : redraw 1
					wait 30 : gosub *read : nigero=1
				}
				a=1 : dash=1 : cx-=4
				if cx<0{
					point=292
					buffer 5 : picload "pass9a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-150 : canmovL=0 : canmovR=800
					figure=0 : nigero=0
					gosub *mapmov
					map=27 : scl=1 : sclp=150 : sclM=400 : gendo=-400 : rusix=560 : rusidir=0 : rusi_on=1 : alert=1 : stun=0 : ev19=1
				}
					
					
				}
				if (map=36)&(ev16=0) {			;�}������O
					 stun=1 : a=1 : cx-
					 if cx<=550 {
						 buffer 10 : picload "greed.bmp"
						 buffer 13 : picload "sekika1a.bmp"
						 buffer 15 : picload "sekika1b.bmp"
						 buffer 17 : picload "sekika2a.bmp"
						 buffer 21 : picload "sekika2b.bmp"
						 buffer 23 : picload "sekika3a.bmp"
						 buffer 25 : picload "sekika3b.bmp"
						 buffer 27 : picload "sekikac.bmp" : gsel 0
						 redraw 0
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						 redraw 1 : wait 200 : grex=300 : grey=-200
						 repeat
						 redraw 0
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						 pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200 : redraw 1
						 if mamospinf=5 : mamospin=200
						 if mamospinf=10 : mamospin=0 : mamospinf=-1
						 mamospinf+
						 grey+
						 await 1
						 if grey>=100 : break
						 loop
						 if vsmamon=1 : goto *mamonskip
						 wait 200
						 redraw 0
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						 pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200
						 pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						 pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						 font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�I" : redraw 1 : wait 30 : gosub *read
						 pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						 pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						 font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������[�X�̌����Ă�\n�E�E�E���_�Ȃ́H" : redraw 1 : wait 30 : gosub *read
						 pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						 pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						 font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�|���Ȃ񂩂Ȃ��E�E�E�E\n�|���Ȃ񂩁E�E�E" : redraw 1 : wait 30 : gosub *read
						 wait 100
						 repeat 70
						 redraw 0
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						 pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200 : redraw 1
						 if mamospinf=5 : mamospin=200
						 if mamospinf>=10 : mamospin=0 : mamospinf=-1
						 mamospinf+
						 await 1
						 loop
						 repeat 100
						 redraw 0
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						 pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200 : redraw 1
						 if mamospinf=3 : mamospin=200
						 if mamospinf>=6 : mamospin=0 : mamospinf=-1
						 mamospinf+
						 await 1
						 loop
						 repeat 50
						 redraw 0
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						 pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200 : redraw 1
						 if mamospinf=8 : mamospin=200
						 if mamospinf>=16 : mamospin=0 : mamospinf=-1
						 mamospinf+
						 await 1
						 loop
						 mamokemuri=400
						 repeat 300
						 redraw 0
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						 pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200
						 pos cx-10,cy-50 : gmode 5,,,160 : gcopy 10,mamokemuri,0,200,200 : redraw 1
						 if mamokemurif=40 : mamokemuri=600
						 if mamokemurif>=80 : mamokemuri=400 : mamokemurif=-1
						 mamokemurif+
						 loop
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						 pos cx,cy : gmode 2 : gcopy 13,0,512,185,256
						 pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200
						 pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						 pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						 font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ق��E�E�E���ق��E�E�E�E�I" : redraw 1 : wait 30 : gosub *read
						 pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						 font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E���x�͉��I�H" : redraw 1 : wait 30 : gosub *read
						 wait 200 : redraw 0
						 pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						 pos cx,cy : gmode 2 : gcopy 8,925,1280,185,256
						 pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200
						 pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						 pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						 font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����I" : redraw 1 : wait 30 : gosub *read
						 pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						 font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�肪�΂ɁE�E�E" : redraw 1 : wait 30 : gosub *read
						 pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						 pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						 font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�₾�I�₾�[�[�[�[���I\n����ς�|�����I�I" : redraw 1 : wait 200 : gosub *read
*mamonskip
						buffer 2 : picload "wseta.bmp" : buffer 3 : picload "wsetb.bmp" : gsel 0 : fatalst=1
						 vsmamon=1 : stun=0 : ev16=1 : BOSSC=1 : bossmode=2 : stone=1 : mamoTime=5100 : kemu=3 : dim kemuri,kemu : dim kemuri_on,kemu : dim kemurikemu,kemu : dim kemustun,kemu : dim kemurihit,kemu
						dim kemurix,kemu : dim kemuriy,kemu : dim kemurif,kemu : dim kemuridirx,kemu : dim kemuridiry,kemu : dim kemushot,kemu : kemurikemu=400,400,400
						ikeep=-1 : gosub *saveitem : stockr=stock : stock=0 : ikeep=-2 : gosub *saveitem : stockb=stock : stock=0 : ikeep=0
					}
				}
				if (BOSSC=1)&(mamotime<=0)&(life>0) {
					buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp" : gsel 0 : mamospin=0 : muteki=1 : stone=0 : stun=1
					repeat kemu
					kemuri_on.cnt=0
					loop
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					if dir=0 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : else : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos grex,grey : gmode 2 : gcopy 10,mamospin,0,200,200 : redraw 1
					if mamospinf=8 : mamospin=200
					if mamospinf>=16 : mamospin=0 : mamospinf=-1
					mamospinf+
					grey-
					if grey<=-200 : break
					await 1
					loop
					BOSSC=0 : bossmode=0
					mapitem=1 : itemx=100 : itemy=0 : Icolor=0
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					if dir=0 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : else : pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					if mapitem=1 :	pos itemx,itemy : gcopy 6,Icolor,0,8,8 : gmode 2
					redraw 1
					itemy+=5
					if itemy>=440 : break
					await 1
					loop
					stun=0 : fatalst=0 : mamobast=1
				}
				if (map=41)&(ev20=0) {;�A���o�C
					buffer 2 : picload "wseta.bmp" : buffer 3 : picload "wsetb.bmp" : gsel 0 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,0,185,256 : redraw 1
					wait 20 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1
					wait 20 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,0,185,256 : redraw 1
					wait 20 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1
					wait 50
					buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp" : gsel 0 : redraw 0
					ev20=1
				}
				if (map=41)&(omoev=1)&(ev21=0){;--------------�������߂�
					if omoflag=0 {
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 22,370,1024,185,256 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��I" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�����ƁE�E�E�E\n���܂񂵂Ă�����E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǁE�E�E�E�ǂ����悤�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						omoflag=1 : faceoff=1 : nyoumore=0
				 	}
				 	nyoumore+
				 	if nyoumore>=500 {
					 	redraw 0
					 	pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 22,555,1024,185,256 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�����E�E�E�E\n���߂����E�E�E�I�I�I" : redraw 1 : wait 30 : gosub *read
						wait 50 : redraw 0
				 		pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 22,740,1024,185,256 : redraw 1 : wait 15 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 22,925,1024,185,256 : redraw 1 : wait 15 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 22,0,1280,185,256 : redraw 1 : wait 15 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 22,185,1280,185,256 : redraw 1 : wait 15 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 22,370,1280,185,256 : redraw 1 : wait 15 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 22,555,1280,185,256 : redraw 1 : wait 15 : redraw 0
						wait 300 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E�E\n�O�X���E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������������E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0 : wait 100
						pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��������ĂȂ����炢�����ǁE�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0 : wait 200
				 		pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E�E�E�E�E�E�E�E\n���ĂȂ��E�E�E�E�E��ˁE�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		wait 100 : color 0,0,0 :boxf 0,0,800,600 : color 255,255,255 : ev21=1 : faceoff=0 : omoev=0 : redraw 1 : redraw 0 : wait 100
					 }
					
				}
				if (map=47)&(cx<100)&(down=0)&(gkz=1)&(ev17=1)&(ev18=0) : pos 0,0 : color 255,255,255 : mes "�o���u���񂵂�" : wait 30 : gosub *read : ev18=1		
				if (BOSSA=1)&(dash=1) : dead=4 : gosub *event_dead		;�i�ߎE��
				if (map=8)&(cx<-70) : dead=6 : gosub *event_dead							;����
				if (map=12)&(cx<200)&(dir=0)&(kokanhit=0) {									;�f���^�z�[�X
				pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,555,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 3
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy-10 : gmode 2 : gcopy 8,370,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180  : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 3
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,370,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180  : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 100
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,555,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 20
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,0,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 20
					repeat 7
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,740,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 70
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,925,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 3
					loop
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,370,0,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 100
					kokanhit=1
					font "�l�r �S�V�b�N",30
					if life>50 : life-50 : else : life=1
				}
				if (map=41)&(cx<=120)&(ev22=0)&(gkz=1) : font "�l�r �S�V�b�N",30 : mes "�ǂ��������ŉ�������" : wait 30 : gosub *read : ev22=1
				if (map=45)&(sclp=0)&(ev23=0) {				;-------------------�x���t�F�S�[����O
					redraw 0
					eventfil=255 : eventp=0
					pos 0,0 : gmode 4,,,50 : gcopy 9,0,0,800,600 : redraw 1 : wait 20 : redraw 0
					pos 0,0 : gmode 4,,,100 : gcopy 9,0,0,800,600 : redraw 1 : wait 20 : redraw 0
					pos 0,0 : gmode 4,,,150 : gcopy 9,0,0,800,600 : redraw 1 : wait 20 : redraw 0
					pos 0,0 : gmode 4,,,200 : gcopy 9,0,0,800,600 : redraw 1 : wait 20 : redraw 0
					pos 0,0 : gmode 4,,,250 : gcopy 9,0,0,800,600 : redraw 1 : wait 20 : redraw 0
					pos 0,0 : gmode 4,,,255 : gcopy 9,0,0,800,600 : redraw 1 : wait 20 : redraw 0
					buffer 5 : picload "room28a.bmp"
					buffer 10 : picload "slowthseta.bmp"
					buffer 13 : picload "slowthsetb.bmp"
					buffer 15 : picload "slowthm.bmp"
					buffer 17 : picload "toketu.bmp"
					buffer 21 : picload "rot.bmp" : gsel 0
					wait 400 : berux=-30
					bkemu1x=-900 ,-2500 : bkemu3x=-800,-1700,-2900
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,740,768,185,256
					pos -30,100 : gmode 2 : gcopy 10,0,0,400,400
					pos 0,0 : gmode 4,,,eventfil : gcopy 9,0,0,800,600 : redraw 1
					if eventp=20 : eventfil=250
					if eventp=40 : eventfil=200
					if eventp=60 : eventfil=150
					if eventp=80 : eventfil=100
					if eventp=100 : eventfil=50
					if eventp=120 : eventfil=0
					if eventp=121 : break
					eventp+
					await 1
					loop
					buffer 9 : picload "filtera.bmp" : gsel 0
					wait 200 : ev23=1 : BOSSD=1 : bossmode=2 : beruhp=0 : berustun=200 : icolor=24
					ikeep=-1 : gosub *saveitem : stockr=stock : stock=0 : ikeep=-2 : gosub *saveitem : stockb=stock : stock=0 : ikeep=0
					sammonT=0 : sammonC=500 : ready=300 : stmn=1000 : berumode=0 : beruchange=0 : beruchp=0 : agrac=0
				}
				if (BOSSD=1)&(beruhp>=5) {;�x���t�F�S�[�����j
						repeat enam*4
						kumoito.cnt=0
						ito.cnt=0
						loop
						repeat enam
						en.cnt=0 : ehit.cnt=0 : estun.cnt=100
						hitpira.cnt=0
						warmstun.cnt=0
						warm_on.cnt=0
						loop
					sakumuteki=1
					if berudame<=0 : berudame=100
					berubast+
					if berubast>=350 {
						poshill=0
						repeat enam
						kuthill.cnt=0
						loop
					color 255,255,255 : boxf 0,0,800,600 : item_used=100 : item_del=1 : gosub *useitems : gosub *useitem : item_used=-4 : item_del=1 : gosub *useitems : gosub *useitem
					itemII=1 : itemnam=9 : gosub *getitem : wait 400
					point=350
					buffer 5 : picload "room24b.bmp" : gsel 0 
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0 : sakumuteki=0 : BOSSD=0 : sakumuteki=0 : bossmode=0
					if drag1.2=0 : mapitem=1 : itemx=215 : itemy=440 : Icolor=24
					gosub *mapmov
					mapwater=0
					map=43 : scl=0
					}
				}
				if (map=69)&(ev32=0){;�A�X���f�E�X�O�̃C�x���g
					a=1 : cx-
					if (cx=500)&(vsasmo=0){
						
						pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 600,10 : gmode 0 : gcopy 11,180,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�s���~�܂�H" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1 : redraw 0 : wait 100
						pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 600,10 : gmode 0 : gcopy 11,180,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����Ԉ����������̂��ȁE�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		buffer 2 : picload "wseta.bmp" : gsel 0
				 		pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 600,10 : gmode 0 : gcopy 11,180,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����ɂȂ񂾂�\n�����{�[���Ƃ��Ă��������" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������E�E�E�E\n���ׁE�E�E�E���ȁH" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		cx-
					}
					if cx<300{
						if vsasmo=1 : goto *asmoskip
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 600,10 : gmode 0 : gcopy 11,180,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�͂��E�E�E�͂��E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ρE�E�E�E����E�E�E�E\n������E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 10,0,0,185,256 : redraw 1 : wait 30
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 10,185,0,185,256 : redraw 1 : wait 30
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 10,370,0,185,256 : redraw 1 : wait 30
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 10,555,0,185,256 : redraw 1 : wait 30
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 10,740,0,185,256 : redraw 1 : wait 30
						onaf=740 : onap=0 : ona2p=0
						repeat
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 10,onaf,0,185,256 
						redraw 1
						if onap=40 : onaf=925
						if onap=60 : onaf=740 : onap=-1
						onap+
						ona2p+
						if ona2p>=500 : break
						await 1
						loop
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 10,740,256,185,256 : redraw 1 : wait 5
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 10,0,0,185,256
						pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�₾���I\n���������Ă��́I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,360,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�Ⴄ�I���̂�������Ȃ��I" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,180,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�E�����Ď�\n����ȕςȎ��E�E�E�E\n���E�E�E�E���Ȃ�����" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		buffer 2 : picload "seta.bmp" : gsel 0 : redraw 0
				 		pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : color 0,0,0
*asmoskip
						Eball3x = 0.0 : Eball3y = 0.0 : Eballr=300.0
				 		kiea=0.0 : kier=0.0 : derua=0.0 : derua=0.0 : lustx=0.0
				 		pointcx=0.0 : Eball1x=0.0 : Eball1y=0.0 : Eball2x=0.0 : Eball2y=0.0
				 		Eball1p=0.0 : Eball1r=0.0 : Eball2p=0.0 : Eball2r=0.0 : Espin=0.0 : derur=0.0
						derur=0.0 : derua=500.0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
				 		color 0,0,0 : pos cos(pi*derur/360)*derua+0.0,sin(pi*derur/360)*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(pi/3))*derua+0.0,sin((pi*derur/360)+(pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(2*pi/3))*derua+0.0,sin((pi*derur/360)+(2*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+pi)*derua+0.0,sin((pi*derur/360)+pi)*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(4*pi/3))*derua+0.0,sin((pi*derur/360)+(4*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(5*pi/3))*derua+0.0,sin((pi*derur/360)+(5*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200 : color 255,255,255
						redraw 1
				 		derur-=30
				 		derua-=5
				 		if derua<=100 : break
				 		await 1
				 		loop
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 0,150 : gmode 2 : gcopy 13,350,0,350,300 : redraw 1
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos cx,cy : gmode 2 : gcopy 8,740,768,185,256
						pos 0,150 : gmode 2 : gcopy 13,350,0,350,300
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�I�I" : redraw 1 : wait 150 : redraw 0
				 		if vsasmo=0{
					 		pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 			font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E������߂Ă悧�I" : redraw 1 : wait 150 : redraw 0
					 	}
				 		BOSSE=1 : ev32=1 : stun=0 : Eballd=1
				 		item_used=11 : item_del=1 : gosub *useitems : gosub *useitem
				 		itemnam=101 : gosub *getitem
				 		derur=0.0 : derua=0.0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
				 		color 0,0,0 : pos cos(pi*derur/360)*derua+0.0,sin(pi*derur/360)*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(pi/3))*derua+0.0,sin((pi*derur/360)+(pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(2*pi/3))*derua+0.0,sin((pi*derur/360)+(2*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+pi)*derua+0.0,sin((pi*derur/360)+pi)*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(4*pi/3))*derua+0.0,sin((pi*derur/360)+(4*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200
						pos cos((pi*derur/360)+(5*pi/3))*derua+0.0,sin((pi*derur/360)+(5*pi/3))*derua+170.0 : gmode 4,,,160 : gcopy 15,800,135,200,200 : color 255,255,255
						redraw 1
				 		derur-=30
				 		derua+=13
				 		if derua>=500 : break
				 		await 1
				 		loop
				 		derur=0 : derua=500 : vsasmo=1
				 		ikeep=-1 : gosub *saveitem : stockr=stock : stock=0 : ikeep=-2 : gosub *saveitem : stockb=stock : stock=0 : ikeep=0
						lustHP=0 : bossmode=4 : lustdeath=rnd(7)
					}
				}
				if (lustlimit=1)&(lustT=0)&(ev33=0)&(life>0){;�A�X���f�E�X���j
					color 0,0,0 : boxf 0,0,800,600
					gosub *hitoff
					EballhitA=0 : EballhitB=0 : stunoff=0
					BOSSE=0 : canmovR=900
					lustlastx=0.0 : lustlasty=0.0 : lustlastr=0.0 : lustlastp=0.0
					pointcx=cx+43.0
					lustlastx=300.0 : lustlasty=0.0
					lustlastr=atan(220.0,pointcx-300.0)
					lustlastp=1.0
					buffer 9 : picload "filterd.bmp" : gsel 0
					filter=255
					if dir=0 : evedir=2 : else : evedir=3
					repeat
					redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy evedir,0,256,185,256
					pos 0,0 : gmode 3,,,filter : gcopy 9,0,0,800,600 : redraw 1
					if filter=0 : break
					filter-=5
					await 1
					loop
					buffer 9 : picload "filtera.bmp" : gsel 0
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255
					ev33=1 : bossmode=0 : lustlast=1 : faceoff=0 : lustlimit=0
					
				}
				if (map=81)&(ev36=0){;----------�x���[�u�u�O
					a=1 : cx-
					if cx<400{
						redraw 0
						buffer 2 : picload "wseta.bmp": gsel 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 0,40 : gmode 2 : gcopy 13,0,0,400,400
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1 : wait 200
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E�E�E�Ȃ�ŁE�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					 	pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E���̕����̂͂��Ȃ̂�" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 0,40 : gmode 2 : gcopy 13,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1 : wait 200
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ȃ́H\n���̉��F���E�E�E�˂΂˂΂����́E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�C����������E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 0,40 : gmode 2 : gcopy 13,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1 : wait 200
						beruzex=4 : beruzey=3 : beruzerate=0.0
						repeat
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 0,40 : gmode 2 : gcopy 13,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 230,370 : gmode 2,800,600 : grotate 10,0,0,0,(beruzex*beruzerate)-40+rnd(80),(beruzey*beruzerate)-40+rnd(80)
						redraw 1
						beruzerate+=0.3
						if beruzerate>=100 : break
						await 1
						loop
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 0,40 : gmode 2 : gcopy 13,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,768,185,256
						pos 230,370 : gmode 2,800,600 : grotate 10,0,0,0,(beruzex*beruzerate)-40+rnd(80),(beruzey*beruzerate)-40+rnd(80)
						redraw 1
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E������E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
				 		pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ȃ񂾂��킩��Ȃ����ǁE�E�E�E�E\n���������Ȃ��ƁI" : redraw 1 : wait 30 : gosub *read : redraw 0	
						buffer 2 : picload "seta.bmp"
						buffer 20 : picload "essmallb.bmp"
						buffer 17 : picload "tinbotu.bmp" : gsel 0
						ikeep=-1 : gosub *saveitem : stockr=stock : stock=0 : ikeep=-2 : gosub *saveitem : stockb=stock : stock=0 : ikeep=0
				 		ev36=1 : BOSSF=1 : stun=0 : guruT=4000 : beruhiru=1
				 		repeat enam
						floa.cnt=0
						slaim.cnt=0
						loop
				 		repeat 30
				 		en.cnt=1
				 		etype.cnt=5
				 		enx.cnt=rnd(400)
				 		estun.cnt=rnd(50)
				 		loop
					}
				}
				if (BOSSF=1)&(guruT<=0) : dead=25 : gosub *event_dead
				
				if (ev45=1)&(ev46=1)&(ev44=0){;------------------------���V�t�F���^�̎p
					ev41=0 : ev42=0 : ev44=1 : alert=0
					color 0,0,0 : boxf 0,0,800,600 : redraw 1 : redraw 0
					buffer 17 : picload "pride2set.bmp"
					buffer 21 : picload "pride3set.bmp"
					buffer 15 : picload "pridechange.bmp" : gsel 0
					cx=100 : dir=1 : rusix=600 : risidir=0 : rusimode=4 : mappos=0 : sclp=0
					wait 200
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350 : redraw 1
					wait 300
					pos 600,10 : gmode 0 : gcopy 11,360,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����Ȃ��Ȃ���������E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��������́E�E�E���ȁH" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350 : redraw 1
					wait 200
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 15,0,0,230,350 : redraw 1
					wait 200
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 15,230,0,230,350 : redraw 1
					wait 10
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 15,230,0,230,350 : redraw 1
					wait 10
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 15,460,0,230,350 : redraw 1
					wait 10
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 15,690,0,230,350 : redraw 1
					wait 10
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 15,920,0,230,350 : redraw 1
					wait 10
					deadp=0 : deadfx=920 : deadfy=0
					repeat 300
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 15,deadfx,deadfy,230,350 : redraw 1
					if deadp=5 : deadfx=0 : deadfy=350
					if deadp=10 : deadfx=230 : deadfy=350
					if deadp=15 : deadfx=920 : deadfy=0 : deadp=-1
					deadp+
					await 1
					loop
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 15,920,0,230,350 : redraw 1
					pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E�E�������I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 15,920,0,230,350 : redraw 1
				 	wait 200
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusix,145 : gmode 2 : gcopy 15,460,350,230,350: redraw 1
					wait 10
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusix,145 : gmode 2 : gcopy 15,690,350,230,350: redraw 1
					wait 10
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusix,145 : gmode 2 : gcopy 15,920,350,230,350: redraw 1
					wait 10
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusix,145 : gmode 2 : gcopy 15,920,350,230,350: redraw 1
					wait 10 : rusitrx=450
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusitrx,275 : gmode 2 : gcopy 17,0,0,300,200: redraw 1
					deadp=0 : deadfx=0
					repeat
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusitrx,275 : gmode 2 : gcopy 17,deadfx,0,300,200: redraw 1
					if deadp=10 : deadfx=300
					if deadp=20 : deadfx=600
					if deadp=30 : deadfx=0 : deadp=-1
					deadp+
					rusitrx-=5
					if rusitrx<=280 : break
					loop
					repeat
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusitrx,275 : gmode 2 : gcopy 17,0,200,300,200: redraw 1
					rusitrx-=9
					if rusitrx<=180 : break
					loop
					repeat
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusitrx,275 : gmode 2 : gcopy 17,300,200,300,200
					pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E�E�I" : redraw 1
					rusitrx-=9
					if rusitrx<=30 : break
					loop
					repeat
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusitrx,275 : gmode 2 : gcopy 17,600,200,300,200
					pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E�E�I" : redraw 1
				 	rusitrx-=9
				 	if rusitrx<=-70 : break
				 	loop
					repeat
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350
					pos rusitrx,275 : gmode 2 : gcopy 17,deadfx,0,300,200
					pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E�E�I" : redraw 1
					if deadp=10 : deadfx=300
					if deadp=20 : deadfx=600
					if deadp=30 : deadfx=0 : deadp=-1
					deadp+
					rusitrx-=5
					if rusitrx<=-400 : break
					loop
					wait 200
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1200,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pos rusix,145 : gmode 2 : gcopy 14,920,0,230,350: redraw 1
					pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�s����������E�E�E�I�H" : wait 30 : gosub *read : redraw 0
					pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǁE�E�E�E�ǂ��ɍs�����񂾂�" : redraw 1: wait 30 : gosub *read : redraw 0 : dir=0
				}
				if (map=120)&(ev47=0){;------------vs���V�t�F���O
					a=4 : dir=1 
					if cx<289 : cx+ : else : mappos- : sclp+
					if mappos<=-300{
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos 800+mappos,175 : gmode 2 : gcopy 17,0,400,300,300 : redraw 1 : wait 100
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos 800+mappos,175 : gmode 2 : gcopy 17,300,400,300,300 : redraw 1 : wait 5
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos 800+mappos,175 : gmode 2 : gcopy 17,600,400,300,300 : redraw 1 : wait 100
						ev47=1 : stun=0 : BOSSG=1 : rusi_tp5=-200+rnd(300) : rusi_tp6=-200+rnd(300) : rusitrx=800+mappos : rusi_tpat=1 : rusi_tdir=0
						item_used=14 : item_del=1 : gosub *useitems : gosub *useitem
						item_used=15 : item_del=1 : gosub *useitems : gosub *useitem
						ikeep=-1 : gosub *saveitem : stockr=stock : stock=0 : ikeep=-2 : gosub *saveitem : stockb=stock : stock=0 : ikeep=-3 : gosub *saveitem : stocky=stock : stock=0  : ikeep=0
						itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
						item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
						itemnam=16 : gosub *getitem
						itemnam=102 : gosub *getitem
						itemnam=103 : gosub *getitem
						itemnam=0
						if stockr>0
						repeat stockr
						potion=-1: gosub *getdrag
						loop
						if stockb>0
						repeat stockb
						potion=-2: gosub *getdrag
						loop
						if stocky>0
						repeat stocky
						potion=-3: gosub *getdrag
						loop
				 		rusihp=60
						
					}
				}
				;--------------------------���V�t�F�����j
				if (BOSSG=1)&(rusihp<=0) {
					stun=1 : redraw 0
					color 255,255,255 : boxf 0,0,800,600 : color 0,0,0 : redraw 1
					wait 300 : itemQ=0 : mapitem=1 : itemx=800+mappos : itemy=440 : Icolor=0
					sclob=0 : eqhit=0 : equipatk=0 : equipstun=50
					ev48=1 : BOSSG=0
					item_used=102 : item_del=1 : gosub *useitems : gosub *useitem
					item_used=103 : item_del=1 : gosub *useitems : gosub *useitem
					item_used=0 : item_del=0
					equipB=0 : equipC=0 : now_equip=0
					stun=0 : life=100 : stmn=1000
				}
				
				if (map=59)&(cx>555)&(down=1)&(gkz=1) {;���ꖰ��
					deadp=0 : deadfx=0
					buffer 10 : picload "slowthm.bmp" : gsel 0
					repeat 300
					redraw 0
					pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
					pos cx-10,cy-50 : gmode 5,,,160 : gcopy 10,deadfx,135,200,200 : redraw 1
					if deadp=40 : deadfx=200
					if deadp>=80 : deadfx=0 : deadp=-1
					deadp+
					loop
					redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 2,0,512,185,256 : redraw 1 : wait 200 : redraw 0
					pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 8,0,0,185,256 : redraw 1 : wait 10 : redraw 0
					pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 8,185,0,185,256 : redraw 1 : wait 10 : redraw 0
					pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 8,370,0,185,256 : redraw 1 : wait 200 : redraw 0
					pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 8,370,0,185,256
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���E�E�E�E�E����H�j" : redraw 1 : wait 30 : gosub *read : redraw 0
				 	pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�������E�E�E�E���E�E�E�E���I�H�j" : redraw 1 : wait 30 : gosub *read : redraw 0
				 	pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���E�E�E�E���߁I\n����ȂƂ���Ŗ�������E�E�E�E�E�j" : redraw 1 : wait 250 : redraw 0
				 	pos mappos,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,370,0,185,256
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���E�E�E�E���E�E�E�E�j" 
				 	pos 0,0 : gmode 3,,,70 : gcopy 9,0,0,800,600: redraw 1 : wait 200 : redraw 0
				 	pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 8,370,0,185,256
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�ӎ��E�E�E���E�E�E�E�j" 
				 	pos 0,0 : gmode 3,,,140 : gcopy 9,0,0,800,600: redraw 1 : wait 200 : redraw 0
				 	pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 8,370,0,185,256
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i����E�E�E�E�E�E�E���E�E�E�E�E�E�j" 
				 	pos 0,0 : gmode 3,,,210 : gcopy 9,0,0,800,600: redraw 1 : wait 200 : redraw 0
				 	pos 0,0 : gmode 3,,,255 : gcopy 9,0,0,800,600: redraw 1
				 	if ev33=1 : dead=18 : else : dead=19
				 	gosub *event_dead
				}
				if (map=121)&(ev50=0){;------------vs���X�{�X
					a=4 : dir=1 
					if cx<289 : cx+ : else : mappos- : sclp+
					if mappos<=-100{
						if battleleas=1 : goto *eveskip_leas
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,360,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����́E�E�E�E�E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : redraw 1 : wait 200
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���ɁE�E�E�E�E�E�E\n���ɒH�蒅�����̂��E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�H" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���̐��E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						leasx=500
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256 : redraw 1
						pos leasx,200 : gmode 4,,,100 : gcopy 26,0,0,60,100 : redraw 1,170,200,60,100 : wait 30 : redraw 0
						pos leasx,200 : gmode 4,,,150 : gcopy 26,0,0,60,100 : redraw 1,170,200,60,100 : wait 30 : redraw 0
						pos leasx,200 : gmode 4,,,200 : gcopy 26,0,0,60,100 : redraw 1,170,200,60,100 : wait 30 : redraw 0
						pos leasx,200 : gmode 4,,,250 : gcopy 26,0,0,60,100 : redraw 1,170,200,60,100 : wait 30 : redraw 0 : wait 100
						pos 600,10 : gmode 0 : gcopy 11,720,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�I" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�悩�����E�E�E�E\n�����������񂾂ˁI" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����E�E�E\n����Ȑl�`���Ƃ��ɖłڂ����\n���ł͂Ȃ�" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�������E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������[�X�̌����Ă�\n��ԉ��Ȃ񂾂�ˁE�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���̒ʂ肾�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�悤�₭�����܂ł��ǂ蒅�����E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�E�E��������������" : redraw 1: wait 30 : gosub *read : redraw 0
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����ŁE�E�E�E�E�E�E\n����ł悤�₭�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����ƁE�E�E�E���A���񂾂ˁE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����A�|���v���͂��Ȃ���\n�ςނ񂾂��" : redraw 1: wait 30 : gosub *read : redraw 0
				 		color 0,0,0 : boxf 0,0,800,600 :redraw 1
				 		pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����ł悤�₭" : redraw 1: wait 50 : redraw 0
				 		pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����ł悤�₭\n���̐��E������Ă���E�E�E�E" : redraw 1: wait 300 : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,720,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���H" : redraw 1: wait 30 : gosub *read : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�悤�₭�A���̂ӂ��������{����\n������΂ł���E�E�E\n����ƁE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�H\n���[�X���E�E�E��������o����@��\n�������́I�H" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,1080,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ꂶ�Ⴀ�A�ꏏ�ɋA���񂾂ˁI" : redraw 1: wait 30 : gosub *read : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "������A���I\n�ꏏ�ɂ͍s���Ȃ���E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���H\n���������牽�����Ă邩������Ȃ���\n���[�X�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�c��̂͂��O��" : redraw 1: wait 200
				 		pos 600,10 : gmode 0 : gcopy 11,720,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E�E�E�E�E�E�E\n���H" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǁE�E�E�E�E�ǂ��������ƁE�E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���I�E�E�E�E�E�E\n����\n�h���O����������A���h�Ƃ�\n�ꌾ�������Ă��Ȃ���" : redraw 1: wait 200
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 300
						pos 600,10 : gmode 0 : gcopy 11,720,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E�E�E�E�E�E�E\n���H" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E���E�E�E�E�E�����āE�E�E\n�E�E�E�E�E�E�E�E�E�E���H" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E���E�E�E�E�E�A���񂶂�\n�E�E�E�E�Ȃ������́E�E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O����������A����@�Ȃ�\n�������������񂾂�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						buffer 3 : picload "wsetbcore.bmp" : gsel 0
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 200
						pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ł��E�E�E�E�E\n���A����΂����񂾂�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�|���������ǁE�E�E\n�ɂ��������ǁE�E�E\n�S���䖝���āE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���񂶂Ⴄ��������Ȃ������̂ɁE�E�E\n�����̗͂Ŋ撣�����񂾂�I" : redraw 1: wait 30 : gosub *read : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����A����������" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O�́A�����̗͂ł����܂�\n�H�蒅�������ɂȂ��Ă�񂾂�����" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�c�O�����A����͊ԈႢ��\n����ƁA���O�����ʂ��Ƃ�\n�S�z����K�v�ȂǂȂ�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���̐��E�Ɂh���h�Ƃ���\n�T�O�͑��݂��Ă��Ȃ�����ȁE�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������Ă�́H\n����������S�R�����Ă邱�Ƃ��E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O�͂��̐��E�ł͌����Ď��˂Ȃ�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������O�̓��̂��΂�΂��\n�j�󂳂ꂽ�Ȃ�\n���O�͂��̋�ɂ�������\n���킢�����鎖�ɂȂ�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����œ���鎖�́A������Ȃ�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O�͊o���Ă͂��Ȃ����낤���E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���͂��O���j�󂳂��x��\n���O�̓��̂��Đ����A�L������������\n���x�ł����̖��{�ɒ��߂�悤��\n���Ă���" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�A���̉ۂ������[���ɑ�����\n�ŏ�����A���x���E�E�E���x���E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��߂Ă�I" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��k�����Č����Ă�E�E�E\n���͂����ƋA���񂾂��āE�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 50
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���x�����킹���\n���O���A�邽�߂̕��@�͂Ȃ�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����Ȃ��Ƃ͕s�\�Ȃ�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ⴀ�E�E�E�E���Ⴀ�E�E�E�E�E�I" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�͎����x�����񂾁I\n�����A���݂����Ȏ������āE�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���񂽂̓s���ŁE�E�E�E�����I" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���Ⴂ���Ă�����Ă͍���ȁE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����͂��O���]�񂾎���\n�����Ď��͂��O�̖]�݂�������\n�����Ă�����ł���" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���̖]�݂͂�������A�鎖������I�I�I" : redraw 1: wait 30 : gosub *read : redraw 0
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�v���o��" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O���ǂ����Ă����ɗ��鎖��\n�Ȃ����̂��E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O����̉������Ă����̂��E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100		
						pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		redraw 0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : color 255,255,255 : wait 200
				 		pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E���I�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�v���o�����悤���ȁE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O���A�������������̂�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����āA����͂��O������\n������̐��E�ւƑ���o���ׂ�\n�V����������" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�R�E�E�E\n�����Ă���ȁE�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����Ȃ́E�E�E�E�E��k�ł�����񂾂�\n�܂����{���ɁE�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������A��������͐��������E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�S���̋��R�E�E�E�E\n�˔\�Ƌ@��d�Ȃ������ʂ��E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "��N�Ɉ�x���邩�Ȃ����̎��E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O�̗l�Ɏ��̏��������݂����̂�\n���x�ƂȂ����ꂽ" : redraw 1: wait 30 : gosub *read : redraw 0
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100	
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����A�����܂ŒH�蒅�����̂�\n���O�����߂Ă��E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�O�̎҂�����\n�r���ł��߂ɂȂ��Ă��܂����E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O�́A�{���ɂ悭�������\n�v���Ă����E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100	
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���āA���낻�뎞�Ԃ��E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����Ȃ炾�A�߉����I�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�s�����Ȃ��E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�Ȃ񂾂ƁH" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ȃ�������������o��Ȃ�āE�E�E�E\n��΋����Ȃ��E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���������Ă���H\n���O����̒N�̂�����\n����Ȗڂɑ����Ă��邩\n�������������������肾��" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����Ȃ̊֌W�Ȃ��I" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ȃ��͎����x���Ă��񂾁I\n�������C�Â���ӂ������\n�킽����E�C�Â���ӂ�����āE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�S���I�����̓s���ŁE�E�E�I" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���̏����̌_���\n���̂ɂ��悤�Ƃ����̂��E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���̏����𐬌������Ȃ����\n���O��������̐��E�ő���ł����ҒB��\n���񂢂鎖���ł���̂���" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����ǂ��ł������I����Ȃ��ƁE�E�E�E\n�����������Ȃ��̂�\n���Ȃ������Ȃ񂾁I" : redraw 1: wait 30 : gosub *read : redraw 0
				 		
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 300	
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������E�E�E�E�E\n�ǂ����Ă����̎ז�������Ƃ����̂���" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�Ȃ�Ύd�����Ȃ�\n���܂�C�����Ȃ����E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O�ɂ͑��̓��ЂɂȂ��Ă��ĖႤ" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E�E�I�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ȃ��͎��ɂ�\n�����ł��Ȃ��񂶂�Ȃ������́I�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������̕���͉������ꂽ\n�A���̏����ɏ]���K�v���Ȃ��E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�Ȃ�Ύ��̎ז���������̂�\n���̂܂܂ɂ͂��Ă͂����Ȃ�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		repeat
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100
						pos 0,0 : gmode 3,,,lastfil : gcopy 9,0,0,800,600: redraw 1
						lastfil+
						if lastfil>=160 : break
						await 1
				 		loop
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E���I�I�I" : redraw 1: wait 30 : gosub *read : redraw 0
				 		redraw 0 : color 0,0,255 : boxf 0,0,800,600 : color 255,255,255 : redraw 1
				 		wait 5
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�E�E�E�E�E�I" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E����E�E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ƃ��Ȃ��E�E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "��������́E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���̔�����E�E�E�E\n��̂�����t���Ă����E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�H\n�������Ă�́H" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����͍ŏ�����E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�n����" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���̍��܂ŁA���ɂ͂���Ȃ��̂�\n�����Ȃ������E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leasx,200 : gmode 2 : gcopy 26,0,0,60,100 : redraw 1 : wait 100
						pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����A�A���̎d�Ƃ��E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�Ō�̍Ō�ɗ]�v�ȏ�Q��\n�c���Ă��ꂽ���̂�" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������낤\n������Ō�Ɏ��ɗ^����ꂽ\n�������Ǝv���΁E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���ꂳ�����z�����\n���ɐ��E���^�������\n�����̂Ȃ�΁E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
*eveskip_leas
						redraw 0 : color 0,0,255 : boxf 0,0,800,600 : color 255,255,255 : redraw 1
				 		wait 5
				 		buffer 5 : picload "roomlast2.bmp" : gsel 0
						leas_mx=600 : leas_my=130 : leas_mdir=0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos leas_mx,leas_my : gmode 2 : gcopy 13,120,200,120,100 : redraw 1 : wait 100: redraw 1
						if battleleas=1 : wait 200 : goto *eveskip_leas2
						redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���������A�o�ɂ��Ă�낤\n�߉����I�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ӂ����Ȃ��ŁE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 		pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 		font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�łт�̂͂��Ȃ��̕��Ȃ񂾂���I" : redraw 1: wait 30 : gosub *read : redraw 0
*eveskip_leas2
						ikeep=-1 : gosub *saveitem : stockr=stock : stock=0 : ikeep=-2 : gosub *saveitem : stockb=stock : stock=0 : ikeep=-3 : gosub *saveitem : stocky=stock : stock=0  : ikeep=0
				 		life=100 : stmn=1000
				 		buffer 3 : picload "setbcore.bmp" : gsel 0
						ev50=1 : stun=0 : BOSSH=1
						leas_mpat=1
				 		leashp=5 : stun=0 : faceoff=1 : battleleas=1 : barrier=0
				 		orbc=1500+rnd(800)
					}
				}
				;------------------�W�E�G���h
				if (BOSSH=1)&(leashp<=0) {
					leas_mx=500 : leas_my=200 : leas_mdir=0
					redraw 0 : color 255,255,255 : boxf 0,0,800,600 : redraw 1 : color 255,255,255
					wait 300
					redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos leas_mx,leas_my : gmode 2 : gcopy 13,120,200,120,100 : redraw 1 : wait 100: redraw 1
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����܂ł��E�E�E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�Ȃ�Ƃ������Ƃ�\n�܂����Ō�̍Ō��\n���s����Ƃ́E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "������͈����ɋC�����Ȃ����\n�Ȃ��ȁE�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������Ă�́E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���񂽂͂�����\n�I���ł���H" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos leas_mx,leas_my : gmode 2 : gcopy 13,120,200,120,100 : redraw 1 : wait 100: redraw 1
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�c�O�����E�E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���ɂ́A���̂��O�Ɠ��l��\n�łтƂ������̂��Ȃ�" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���Ƃ������g���]�񂾂Ƃ��Ă���" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�ǂ���玄�͂����ɂ��錠����\n�������炵�����ˁE�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�S���E�E�E�E�E\n�܂����̓K���҂������܂�\n�C���ɑ҂��˂΂Ȃ��̂�" : redraw 1: wait 30 : gosub *read : redraw 0
					buffer 3 : picload "wsetbcore.bmp" : gsel 0
				 	redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos leas_mx,leas_my : gmode 2 : gcopy 13,120,200,120,100 : redraw 1 : wait 100: redraw 1
				 	pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E�E�E" : redraw 1: wait 300
				 	pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E���́E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���A�{���ɂ����A��Ȃ��́E�E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����ƂЂƂ�ڂ����ŁE�E�E\n����Ȍ��ȏ��ɂ��Ȃ��Ⴞ�߂Ȃ́I�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������x�Ɖ�Ȃ��́I�H\n���Ƃ�����ɂ��A����������ɂ��E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�����ɂ͔��ׂȂ��������\n���O�̂������E�Ƃ̌q���肪����E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�������ȁE�E�E�E�E\n������̐��E�ł�\n�F���̏I���ł������\n���邢�͉������邩������Ȃ���" : redraw 1: wait 30 : gosub *read : redraw 0
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�m�؂ȂǑS���Ȃ����ˁE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
					pos 600,10 : gmode 0 : gcopy 11,540,1080,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E���I�H\n��̂��ɂȂ����痈��́H\n�F���̏I�����āE�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���͂���Ȏ��͒m���\n�A���Ȃ�m���Ă��邩������Ȃ����E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���łɋ����Ă�����\n���̐��E�ł̈�N�Ԃ�\n�������̐��E�ł̈�b�Ԃ�\n������Ŋ��������ɓ������炵��" : redraw 1: wait 30 : gosub *read : redraw 0
					pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ށE�E�E�ނ��E�E�E�H\n������I�H�悭������Ȃ���I\n��������Ăǂ̂��炢�Ȃ̂悧�I�I�I" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos leas_mx,leas_my : gmode 2 : gcopy 13,120,200,120,100 : redraw 1 : wait 100: redraw 1
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���O�̋ꂵ�ގ��Ԃɔ�ׂ��\n���̑ς��˂΂Ȃ�Ȃ����ԂȂ�\n��u�ɉ߂���킯���E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�Ȃ�΂��ꂭ�炢\n�ς��Ă݂��悤�ł͂Ȃ���" : redraw 1: wait 30 : gosub *read : redraw 0
					pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E���[�X�I�҂��Ă�E�E�E�E\n���E�E�E���ǂ�������E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���[�X�E�E�E�E\n���O�ɂ͎��̎���\n�����Ă΂��Ă����񂾂�����" : redraw 1: wait 30 : gosub *read : redraw 0
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "����͎g���̂Ăׂ̖̈��O����\n���̖{���̖��́E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
					redraw 0 : color 0,0,255 : boxf 0,0,800,600 : color 255,255,255 : redraw 1
				 	wait 5
				 	redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256 : redraw 1 : wait 200: redraw 1
					pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�E�E�E�E�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�E�E�E�E�₾�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256 : redraw 1 : wait 200: redraw 1
				 	pos 600,10 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�����������������I\n�ЂƂ�Ȃ�Ă₾�����������I" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�A���Ă�I\n���Ƃɂ������Ă悧�������I�I�I�I" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1
				 	pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����������������������������\n��������������������������������\n��������������������������\n������������������������������" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 200
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256 : redraw 1 : wait 100: redraw 1
					pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E����E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E\n���܂Ŏ���ł������̋L���E�E�E�I�H" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���[�X�����Ȃ��Ȃ�������E�E�E�E\n�߂��Ă����́E�E�E�I�H" : redraw 1: wait 30 : gosub *read : redraw 0
					pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�₾�E�E�E�E�E\n����Ȓɂ��̂����₾�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���₠����������\n���ꂩ�����āI\n�����Ă您�������I" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����������������o���āI\n����ȁE�E�E����Ȓɂ���\n�E�E�E�E�Ђ����I�I�I" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 400
				 	buffer 5 : picload "pass5a.bmp" : gsel 0
				 	cx=100
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256 : redraw 1 : wait 200: redraw 1
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������E�E�E�E�E�|���悧�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ŁE�E�E�E�o���͂ǂ��Ȃ́I�H\n�܂����{���ɂȂ��Ȃ�Ă��ƁE�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E\n������ɂ��܂����������E�E�E\n�Ђ����������E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256 : redraw 1
					pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�I�I�I�I�I" : redraw 1: wait 30 : gosub *read : redraw 0
					deadp=0 : deadfx=0 : mogux=800
				 	repeat
				 	redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos cx,cy : gmode 2 : gcopy 8,925,0,185,256 
					pos mogux,363 : gmode 2 : gcopy 4,deadfx,93,113,93 : redraw 1
					if deadp=0 : deadfx=0
			    	if deadp=20 : deadfx=118
					if deadp=40 : deadfx=236
					if deadp>=60 : deadfx=-1
					mogux-
					if mogux<=500 : break
					deadp+
				 	await 1
				 	loop
				 	pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���₠���������������������I�I�I" : redraw 1: wait 400
				 	redraw 0 : color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1: wait 300
				 	buffer 2 : picload "staff.bmp"
				 	buffer 3 : picload "end.bmp" : gsel 0
				 	redraw 0
				 	pos 0,0 : gmode 0 : gcopy 2,0,0,800,600 : redraw 1 : wait 500
					wait 700
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������ɗ��Ă���\n�ǂꂾ�����Ԃ��������̂��낤" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����͂��������ǂ��H\n�Ȃ�Ŏ��͂���ȏ���\n���Ȃ��Ă͂Ȃ�Ȃ��́H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�N�H�����ɂ���̂́E�E�E�E��̒N�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 200
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "�|����Ȃ��Ă����E�E�E�E" : redraw 1: wait 30 : gosub *read : redraw 0
					redraw 0 : 	pos 600,10 : gmode 0 : gcopy 11,0,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
				 	font "�l�r ����",30 : pos 30,20 : color 0,0,255 : mes "���͌N���~��������" : redraw 1: wait 500
					repeat
					redraw 0 : pos 0,0 : gmode 0 : gcopy 3,0,0,800,600 : redraw 1
					await 1
					loop
				 	
				}

				
				if yakiniku=800 : yakiniku=0 : dead=7 : gosub *event_dead 			;�Ă���
				if (map=19)&(kui19=1)&(dir=0)&(((cx>515)&(cx<545))|((cx>405)&(cx<435))|((cx>170)&(cx<200))) : dead=8 : gosub *event_dead ;���h��
				if (map=19)&(down=0)&(dir=0)&(cx>275)&(cx<305) : dead=8 : gosub *event_dead
				if (map=16)&(ItemC=1)&(cx>300)&(ev6=0) : dead=9 : gosub *event_dead				;�T�^���Ƀt���{�b�R
				if (BOSSB=1)&(down=0)&(satray=1)&(life>0) : dead=10 : gosub *event_dead    ;�㔼�g����
				if (BOSSB=1)&(cauntdown>120)&(map=16)&(life>0) : dead=11 : gosub *event_dead   ;���S����
				if (BOSSC=1)&(stone>=4)&(life>0) : dead=12 : gosub *event_dead    ;�Ή�
				if (map=56)&(cx<=240)&(cx>=200)&(down=0)&(down56=0) : dead=14 : gosub *event_dead    ;���C���[
				if (map=56)&(cx<=240)&(cx>=200)&(down=0)&(down56=1) : dead=15 : gosub *event_dead    ;���C���[2
				if (map=112)&(cx<=140) : dead=28 : gosub *event_dead    ;�j�t���ؔn
																		;-------------------���V�t�F���Ŏ��S�i�X�e�[�W�R�j
				if (rusi_on=1)&(stage=3)&(alert=1)&(muteki=0)&(((dir=0)&(rusix+30<cx+113)&(rusix+150>cx+83))|((dir=1)&(rusix+80<cx+113)&(rusix+200>cx+83))) {
					rusicatch=rnd(100)   
					if (rusicatch>=0)&(rusicatch<45) : rusidead=0
					if (rusicatch>=45)&(rusicatch<90) : rusidead=1
					if (rusicatch>=90)&(rusicatch<100) : rusidead=2
					gosub *event_dead
				}
				if (rusi_on=1)&(stage=6)&(alert=1)&(muteki=0)&(((dir=0)&(rusix+30<cx+113)&(rusix+150>cx+83))|((dir=1)&(rusix+80<cx+113)&(rusix+200>cx+83))) {
					rusicatch=rnd(100)   
					if (rusicatch>=0)&(rusicatch<30) : rusidead=0
					if (rusicatch>=30)&(rusicatch<60) : rusidead=1
					if (rusicatch>=60)&(rusicatch<73) : rusidead=3
					if (rusicatch>=73)&(rusicatch<86) : rusidead=4
					if (rusicatch>=86)&(rusicatch<100) : rusidead=5
					gosub *event_dead
				}
												;--------------------------------�}�b�v�ړ��n
				
				if (cx<40)&(map=1) {												;room1>pass1	
					point=650
					buffer 5 : picload "pass1a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=1
					gosub *mapmov
					map=2 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=2
					enx=300
				}
				if (cx>700)&(map=2) {												;pass1>room1	
					point=70
					buffer 5 : picload "room1b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=0 : canmovR=590
					figure=10
					gosub *mapmov
					map=1 : scl=0
					etype=1,1,1,1,1,1,1,1
					enx=380,310,480,590,600,340,400,510
				}
				if (cx<0)&(map=2) {												;pass1>room2	
					point=600
					buffer 5 : picload "room2.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=150 : canmovR=700
					figure=0
					if itemA=0 : mapitem=1 : itemx=200 : itemy=440 : Icolor=0
					gosub *mapmov
					map=3 : scl=0
				}
				if (cx>610)&(map=3) {												;room2>pass1	
					point=40
					buffer 5 : picload "pass1a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=1
					gosub *mapmov
					map=2 : scl=1 : sclp=0 : sclM=400 : gendo=-400 
					etype=2
					enx=900
				}
				if (map=2)&(cx>=270)&(cx<=292)&(sclp<=80)&(gkup=1)&(ev2=1) {		;pass1>pass2	
					point=600
					dir=0
					buffer 5 : picload "pass2a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=1
					gosub *mapmov
					map=4 : scl=1 : sclp=400 : sclM=400 : gendo=-400 
					etype=1
					enx=-500
				}
				if (map=4)&(cx>700) {												;pass2>pass1	
					point=291
					buffer 5 : picload "pass1a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-40 : canmovL=-30 : canmovR=800
					figure=1
					gosub *mapmov
					map=2 : scl=1 : sclp=40 : sclM=400 : gendo=-400 
					etype=2
					enx=1000
				}
				if (map=4)&(cx>=289)&(cx<=292)&(sclp<=180)&(sclp>=120)&(gkup=1) {		;pass2>room3										;pass2>room3	
					point=600
					dir=0
					buffer 5 : picload "room3a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=112 : canmovR=800
					figure=0
					if itemB=0 : mapitem=1 : itemx=160 : itemy=285 : Icolor=8
					gosub *mapmov
					map=5 : scl=0
				}
				if (map=5)&(cx>610) {													;room3>pass2	
					point=290
					buffer 5 : picload "pass2a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-150 : canmovL=-30 : canmovR=800
					figure=2
					mapitem=0
					gosub *mapmov
					map=4 : scl=1 : sclp=150 : sclM=400 : gendo=-400
					etype=1,1
					enx=700,1500
				}
				if (map=4)&(cx<0) {													;pass2>room4										
					point=600
					dir=0
					if ev3=1 : buffer 5 : picload "room4b.bmp" : gsel 0 : else : buffer 5 : picload "room4a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=60 : canmovR=700
					figure=0
					gosub *mapmov
					map=6 : scl=0
				}
				if (cx>610)&(map=6) {												;room4>pass2
					if press=1 {
						}
					else {
						point=40
						buffer 5 : picload "pass2a.bmp" : gsel 0
						mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
						mapitem=0
						figure=2
						gosub *mapmov
						map=4 : scl=1 : sclp=0 : sclM=400 : gendo=-400
						etype=1,1
						enx=900,300,480,590
					}
				}
				if (cx>=260)&(cx<=340)&(map=6)&(ev3=1)&(gkup=1) {					;room4>pass3(�{�X��
				if press=1 {
						}
					else {
						point=650 : dir=0 : gkx=0
						buffer 5 : picload "pass3.bmp" : gsel 0
						mapsizeX=2000 : mapsizeY=600 : mappos=-1200 : canmovL=-30 : canmovR=700
						mapitem=0
						figure=0
						gosub *mapmov
						bossatackA=0 : ueatack_on=0 : sitaateck_on=0 : BosshitA=0 : uemotion=0 : sitamotion=0 : stun=1
						map=7 : scl=1 : sclp=1200 : sclM=1200 : gendo=-1200
					}
				}
				if (map=7)&(cx<0) {													;pass3>room5										
					point=600
					dir=0
					buffer 5 : picload "room5a.bmp" : gsel 0
					buffer 10 : picload "room5b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=620
					figure=0 : life=100 : stmn=1000
					gosub *mapmov
					map=8 : scl=0
					BOSSA=0 : bossatackA=0 : ueatack_on=0 : sitaatack_on=0 : BosshitA=0 : uemotion=0 : sitamotion=0 : bossmode=0 : stage=2
					if savep.1=0 : savep=1873692,1 : bsave "save.dat", savep
				}
				if (map=8)&(cx<280)&(cx>200)&(gkup=1) {													;room5>room6										
					point=280
					buffer 5 : picload "room6a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-50 : canmovR=800
					figure=0
					gosub *mapmov
					map=9 : scl=0
				}
				if (map=9)&(cx<30) {													;room6>pass4A										
					point=650
					buffer 5 : picload "pass4a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-50 : canmovR=800
					figure=2
					gosub *mapmov
					map=10 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=1,2
					enx=-500,0
				}
				if (map=9)&(cx>700) {													;room6>pass4B										
					point=30
					buffer 5 : picload "pass4b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-50 : canmovR=800
					figure=1
					settrap=1
					trap.cnt=1
					trapx.cnt=500
					gosub *mapmov
					map=11 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=2
					enx=500
				}
				if (map=10)&(cx>700) {													;pass4A>room6										
					point=70
					buffer 5 : picload "room6a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-50 : canmovR=800
					figure=0
					gosub *mapmov
					map=9 : scl=0
				}
				if (map=10)&(cx>=270)&(cx<=292)&(sclp<=60)&(gkup=1) {					;pass4A>room7										
					point=650
					dir=0
					if ev8=0 : buffer 5 : picload "room7.bmp" : gsel 0 : else : buffer 5 : picload "room7b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=150 : canmovR=800
					figure=0
					gosub *mapmov
					map=12 : scl=0
				}
				if (map=12)&(cx>=700) {													;room7>pass4A										
					point=290
					buffer 5 : picload "pass4a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-30 : canmovL=-50 : canmovR=800
					figure=2
					gosub *mapmov
					map=10 : scl=1 : sclp=30 : sclM=400 : gendo=-400
					etype=2,1
					enx=800,-50
				}
				if (map=11)&(cx<0) {													;pass4B>room6										
					point=650
					buffer 5 : picload "room6a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-50 : canmovR=800
					figure=0
					settrap=0
					gosub *mapmov
					map=9 : scl=0
				}
				if (map=11)&(cx>700) {													;pass4B>room8										
					point=70
					buffer 5 : picload "room8a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-50 : canmovR=800
					figure=0
					settrap=0
					gosub *mapmov
					map=13 : scl=0
				}
				if (map=13)&(cx<30) {													;room8>pass4B										
					point=650
					buffer 5 : picload "pass4b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-50 : canmovR=800
					figure=1
					settrap=1
					trap.cnt=1
					trapx.cnt=-300
					gosub *mapmov
					map=11 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=2
					enx=300
				}
				if (map=13)&(cx>700) {													;room8>room9A									
					point=80
					buffer 5 : picload "room9a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=590
					figure=0
					settrap=0
					gosub *mapmov
					map=15 : scl=0
				}
				if (map=13)&(cx>310)&(cx<400)&(gkup=1) {													;room8>room10A									
					point=600 : dir=0
					buffer 10 : picload "room10b.bmp" : gsel 0
					buffer 5 : picload "room10a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=288 : canmovR=700
					figure=0
					settrap=0
					gosub *mapmov
					map=14 : scl=0
					if ev7=0 : stun=1 : dash=0 : gkx=0
				}
				if (map=14)&(cx>650) {													;room10A>room8									
					point=350
					buffer 5 : picload "room8a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=0 : canmovR=700
					figure=0
					settrap=0
					gosub *mapmov
					map=13 : scl=0
				}
				if (map=14)&(cx<75) {													;room10A>holl1A									
					point=650
					buffer 5 : picload "holl1a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=0 : canmovR=800
					figure=0
					settrap=0
					semaimiti=1
					gosub *mapmov
					map=18 : scl=0
				}
				if (map=18)&(cx>700) {													;holl1A>room10A									
					point=80
					buffer 10 : picload "room10b.bmp" : gsel 0
					buffer 5 : picload "room10a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					settrap=0
					semaimiti=1
					cantstand=1
					gosub *mapmov
					map=14 : scl=0
				}
				if (map=18)&(cx<30) {													;holl1A>room11A									
					point=650
					buffer 5 : picload "room11b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					if itemD=0 : mapitem=1 : itemx=130 : itemy=440 : Icolor=40
					figure=0
					settrap=0
					semaimiti=0
					cantstand=0
					kui19=1
					gosub *mapmov
					map=19 : scl=0
				}
				if (map=19)&(cx>700) {													;room11A>hool1A									
					point=40
					buffer 5 : picload "holl1a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=0 : canmovR=800
					mapitem=0
					figure=0
					settrap=0
					semaimiti=1
					cantstand=1
					kui19=0
					gosub *mapmov
					map=18 : scl=0
				}
				if (map=9)&(cx>300)&(cx<380)&(gkup=1) {													;room6>room12
				if itemC=1 {
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2
					if dir=0 : gcopy 2,0,256,185,256 : else : gcopy 3,0,256,185,256
					pos 0,0 : color 255,255,255 :  mes "�����J���Ȃ��悤��" : wait 100 
				}
				else {
					point=650 : dir=0
					buffer 5 : picload "room12a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=100 : canmovR=800
					figure=0
					settrap=0
					trapA=0
					trapAx=500 : trapBx=0 : trapCx=0 : trapDx=0 : trapEx=0
					gosub *mapmov
					map=16 : scl=0 : sclp=0 : sclM=400 : gendo=-400
				}
				}
				if (map=16)&(cx>650) {													;room12>room6A
					point=340
					if BOSSB=1 {
						sat_A=0 : sat_B=0 : sat_C=0 : sat_D=0 : sat_E=0 : wrapos=0 : satbigray=0  : faceoff=0 : BOSSB=0 : satan_bast=1 : pos 0,0 : font "�l�r �S�V�b�N",30
					}
					buffer 5 : picload "room6a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=0 : canmovR=800
					mapitem=0
					figure=0
					settrap=0
					trapA=0
					trapAx=500 : trapBx=0 : trapCx=0 : trapDx=0 : trapEx=0
					gosub *mapmov
					map=9 : scl=0 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=12)&(cx<500)&(cx>420)&(down=1)&(gkz=1) {													;room7>room13A
					point=650
					if itemE=0 : buffer 5 : picload "room13a.bmp" : gsel 0 : else : buffer 5 : picload "room13b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=115 : canmovR=800 : dir=0
					mapitem=0
					figure=0
					settrap=0
					trapA=0
					trapAx=500 : trapBx=0 : trapCx=0 : trapDx=0 : trapEx=0
					gosub *mapmov
					map=20 : scl=0 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=20)&(cx>700) {													;room13>room7B
					point=450
					buffer 5 : picload "room7b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=100 : canmovR=800
					mapitem=0
					figure=0
					settrap=0
					trapA=0
					trapAx=500 : trapBx=0 : trapCx=0 : trapDx=0 : trapEx=0
					gosub *mapmov
					map=12 : scl=0 : sclp=0 : sclM=400 : gendo=-400
				}
				if (cx<0)&(map=10) {												;pass4A>room14	
					point=650
					if ev9=0 : buffer 5 : picload "room14a.bmp" : gsel 0 : else : buffer 5 : picload "room14b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					if drag1.0=0 : mapitem=1 : itemx=150 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=17 : scl=0
				}
				if (cx>700)&(map=17) {												;room14>pass4A	
					point=40
					buffer 5 : picload "pass4a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=2
					gosub *mapmov
					map=10 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=2,2
					enx=600,1000
				}
				if (map=17)&(cx<=370)&(cx>310)&(down=0)&(gkup=1)&(ev9=1) {					; 17>21
					point=300
					buffer 5 : picload "room15a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=21 : scl=0 : stun=1 : gkx=0 : life=100 : stmn=1000 : stage=3
					if savep.1<=1 : savep=2581763,2 : bsave "save.dat", savep
				}
				if (map=1)&(down=1)&(gkup=1) {					; �f�o�b�O�p
					point=370 : stage=2 : ev1=1
					buffer 5 : picload "room5a.bmp" : gsel 0
					buffer 10 : picload "room5b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					figure=0
					gosub *mapmov
					map=8 : scl=0 : life=100 : stmn=1000 : stage=2
				}
				if (map=8)&(tes2>=5) {					; �f�o�b�O�p2
					stage=3 : ev1=1 : ev10=1
					point=300
					buffer 5 : picload "room15a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=21 : scl=0 : life=100 : stmn=1000
				}
				if (map=21)&(downTtest>=500){			;�f�o�b�O�p3
					stage=4 : dir=1
					point=100
					buffer 5 : picload "room30a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=49 : scl=0 : life=100 : stmn=1000
				}
				if (cx<0)&(map=21) {												;21>23
					point=650
					if ev11=0 : buffer 5 : picload "pass5a.bmp" : gsel 0 : else : buffer 5 : picload "pass5b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=2
					gosub *mapmov
					map=23 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=1,2
					enx=-500,0
				}
				if (map=23)&(cx>700) {										; 23>21
					point=40
					if ev24=0 : buffer 5 : picload "room15a.bmp" : gsel 0 : else : buffer 5 : picload "room15b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=21 : scl=0
				}
				if (map=23)&(cx<0) {										; 23>24
					point=650
					if ev13=0 : buffer 5 : picload "room16a.bmp" : gsel 0 : else : buffer 5 : picload "room16b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=24 : scl=0
				}
				if (cx>700)&(map=24) {												;24>23
					point=40
					if ev11=0 : buffer 5 : picload "pass5a.bmp" : gsel 0 : else : buffer 5 : picload "pass5b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=4
					gosub *mapmov
					map=23 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=1,1,1,1
					enx=500,1200,150000,800
				}
				if (cx<=450)&(cx>=370)&(map=24)&(gkup=1) {									;24>27
					point=650 : dir=0
					buffer 5 : picload "pass9a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=3
					gosub *mapmov
					map=27 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=3,1
					enx=0,0
				}
				if (map=27)&(cx>700) {					; 27>24
					point=400
					if ev13=0 : buffer 5 : picload "room16a.bmp" : gsel 0 : else : buffer 5 : picload "room16b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=24 : scl=0
				}
				if (map=27)&(cx<0) {					; 27>28
					point=650
					buffer 5 : picload "room18a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=28 : scl=0
				}
				if (cx>=700)&(map=28) {												;28>27
					point=40
					buffer 5 : picload "pass9a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=2
					gosub *mapmov
					map=27 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=3,3
					enx=1000,600
				}
				if (map=27)&(cx<=292)&(cx>=290)&(sclp>=322)&(gkup=1) {					; 27>34
					dir=1
					point=40
					
					if ev14=0 : buffer 5 : picload "pass6a.bmp" : gsel 0 : else : buffer 5 : picload "pass6b.bmp" : gsel 0 
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=600
					figure=0
					gosub *mapmov
					map=34 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					if ev19=0 : rusix=200 : rusi_on=1 : stun=1 : gkx=0
				}
				if (map=34)&(cx<0) {											; 34>27
					rusi_on=0
					point=292
					buffer 5 : picload "pass9a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-360 : canmovL=0 : canmovR=800
					figure=3
					gosub *mapmov
					map=27 : scl=1 : sclp=360 : sclM=400 : gendo=-400
					etype=3,1,1
					enx=-0,-400,600
				}
				if (cx>=300)&(cx<=370)&(map=28)&(gkup=1) {						;28>29
					point=650
					buffer 5 : picload "pass7a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=20 : canmovR=800
					figure=3
					gosub *mapmov
					map=29 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=4,4,2
					enx=0,200,0
				}
				if (map=29)&(cx>700) {										; 29>28
					point=340
					buffer 5 : picload "room18a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=28 : scl=0
				}
				if (map=21)&(cx>700) {												; 21>25
					point=40
					buffer 5 : picload "room17a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=600
					figure=0
					if (itemH=0)&(itemG=1) : mapitem=1 : itemx=700 : itemy=440 : Icolor=24
					gosub *mapmov
					map=25 : scl=0
				}
				if (map=25)&(cx<30) {												; 25>21
					point=650
					if ev24=0 : buffer 5 : picload "room15a.bmp" : gsel 0 : else : buffer 5 : picload "room15b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					mapitem=0
					gosub *mapmov
					map=21 : scl=0
				}
				if (cx>=300)&(cx<=370)&(map=25)&(gkup=1) {							;25>26
					point=40
					dir=1
					if ev15=0 : buffer 5 : picload "pass8a.bmp" : gsel 0 : else : buffer 5 : picload "pass8b.bmp" : gsel 0 
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=600
					if ev16=1 : figure=60 : else : figure=2
					if drag1.1=0 : mapitem=1 : itemx=190 : itemy=440 : Icolor=24
					gosub *mapmov
					map=26 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					if ev16=1 {
						repeat 60
						etype.cnt=5
						enx.cnt=1100+rnd(100)
						loop
					}
					else{
						etype=4,4
						enx=400,700
					}
				}
				if (map=26)&(cx<0) {												; 26>25
					point=340
					buffer 5 : picload "room17a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=600
					figure=0
					if (itemH=0)&(itemG=1) : mapitem=1 : itemx=700 : itemy=440 : Icolor=24 : else : mapitem=0
					gosub *mapmov
					map=25 : scl=0
				}
				if (map=34)&(cx>=500)&(down=1)&(gkz=1)&(ev14=1) {					; 34>35
					point=650 : dir=0
					cantsatnd=1 : semaimiti=1
					buffer 5 : picload "holl1a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					if itemF=0 : mapitem=1 : itemx=300 : itemy=440 : Icolor=32
					figure=0
					gosub *mapmov
					map=35 : scl=0
				}
				if (map=35)&(cx>=700) {										; 35>34
					point=550
					cantsatnd=0 : semaimiti=0 : mapitem=0
					buffer 5 : picload "pass6b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=600
					figure=0
					gosub *mapmov
					map=34 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=35)&(cx<=30) {					; 35>23
					ev11=1
					point=310
					cantsatnd=0 : semaimiti=0 : mapitem=0
					buffer 5 : picload "pass5b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=2
					gosub *mapmov
					map=23 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=1,1
					enx=-200,700
				}
				if (map=23)&(cx>=290)&(cx<=325)&(sclp>380)&(down=1)&(gkz=1)&(ev11=1) {	; 23>35
					point=40 : dir=1
					cantsatnd=1 : semaimiti=1
					if itemF=0 : mapitem=1 : itemx=300 : itemy=440 : Icolor=32
					buffer 5 : picload "holl1a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=600
					figure=0
					gosub *mapmov
					map=35 : scl=0
				}
				if (map=29)&(cx<=25)&(gkz=1) {					; 29>30
					if ev12=1{
					point=650
					buffer 5 : picload "room20a.bmp" : gsel 0
					buffer 10 : picload "room20b.bmp" : gsel 0
					mapsizeX=1000 : mapsizeY=600 : mappos=-200 : canmovL=490 : canmovR=800
					figure=0
					gosub *mapmov
					map=30 : scl=1 : sclp=200 : sclM=200 : gendo=-200
					}
					else {
						pos 0,0 : mes "�J�M���������Ă���" : wait 30 : gosub *read : wait 30
					}
				}
				if (map=30)&(cx>=700) {									; 30>29
					point=40
					buffer 5 : picload "pass7a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=20 : canmovR=800
					figure=3
					gosub *mapmov
					map=29 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=4,4,3
					enx=300,800,900
				}
				if (map=30)&(cx>=180)&(cx<=250)&(down=1)&(gkz=1) {									; 30>31
					point=650 : dir=0
					cantsatnd=1 : semaimiti=1
					buffer 5 : picload "holl1a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=31 : scl=0
					
				}
				if (map=31)&(cx>=700) {									; 31>30
					point=210
					cantsatnd=0 : semaimiti=0
					buffer 5 : picload "room20a.bmp" : gsel 0
					buffer 10 : picload "room20b.bmp" : gsel 0
					mapsizeX=1000 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=30: scl=1 : sclp=0 : sclM=200 : gendo=-200
				}
				if (map=31)&(cx<30) {									; 31>32
					point=370
					cantsatnd=0 : semaimiti=0
					buffer 5 : picload "room19a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=32 : scl=0
				}
				if (map=32)&(cx<=392)&(cx>=350)&(gkz=1)&(down=1) {									; 32>31
					point=40 : dir=1
					cantsatnd=1 : semaimiti=1
					buffer 5 : picload "holl1a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=31 : scl=0
				}
				if (map=32)&(cx>700) {									; 32>26
					point=550 : ev15=1 : dir=0
					buffer 5 : picload "pass8b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=600
					if ev16=1 : figure=60 : else : figure=0
					gosub *mapmov
					map=26 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					if drag1.1=0 : mapitem=1 : itemx=-220 : itemy=440 : Icolor=24
					if ev16=1 {
						repeat 60
						etype.cnt=5
						enx.cnt=-400+rnd(100)
						loop
					}
				}
				if (map=26)&(cx>=525)&(gkz=1)&(down=1) {									; 26>32
					point=650 : dir=0
					buffer 5 : picload "room19a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=32 : scl=0 : rusiact=1
				}
				if (map=29)&(cx<=292)&(cx>=289)&(sclp>=120)&(sclp<=200)&(gkup=1) {					; 29>33
					point=650
					buffer 5 : picload "room21a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=33 : scl=0
				}
				if (map=33)&(cx>700) {																; 33>29
					point=292
					buffer 5 : picload "pass7a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-160 : canmovL=20 : canmovR=800
					figure=0
					gosub *mapmov
					map=29 : scl=1 : sclp=160 : sclM=400 : gendo=-400
					if take1=1 : take1=2
					if take1=3 : take1=4
					if take1=5 : take1=6
				}
				if (map=24)&(cx<150)&(down=1)&(gkz=1) {						; 24>37
				if ev13=1 {
					point=550
					buffer 5 : picload "pass10a.bmp" : gsel 0
					buffer 10 : picload "pass10b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=650
					figure=1
					gosub *mapmov
					mapwater=1
					map=37 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=6
					enx=0
				}
				if (ev13=0)&(ItemG=0) {
					stun=1 : font "�l�r �S�V�b�N",30 : pos 0,0 : color 255,255,255 : mes "�����������Ă��ĊJ�����Ȃ�" : wait 30 : gosub *read : stun=0
				}
				}
				if (map=37)&(cx<530)&(cx>470)&(down=0)&(gkup=1) {								; 37>24
					point=100
					mapwater=0
					buffer 5 : picload "room16b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=24 : scl=0
				}
				if (map=32)&(cx<80)&(dir=0)&(gkz=1) {								; 32>36
				if itemG=1 {
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2
					if dir=0 : gcopy 2,0,256,185,256 : else : gcopy 3,0,256,185,256
					pos 0,0 : color 255,255,255 :  mes "�����J���Ȃ��悤��" : wait 100 
				}
				else {
					point=650 : nure=0 : kawaki=0 : buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp" : gsel 0
					buffer 5 : picload "room22a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=600
					figure=0
					gosub *mapmov
					map=36 : scl=0 : stun=1 : dash=0 :gkx=0
				}
				}
				if (map=36)&(cx>650) {								; 36>32
					point=90
					buffer 5 : picload "room19a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=32 : scl=0
					font "�l�r �S�V�b�N",30
				}
				if (map=37)&(cx<0) {								; 37>39
					point=650
					buffer 5 : picload "room23a.bmp" : gsel 0
					buffer 10 : picload "room23b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					mapwater=1
					map=39 : scl=0
				}
				if (map=39)&(cx>650) {											; 39>37
					point=40
					buffer 5 : picload "pass10a.bmp" : gsel 0
					buffer 10 : picload "pass10b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					figure=1
					gosub *mapmov
					mapwater=1
					map=37 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=6
					enx=800
				}
				if (map=39)&(cx<0) {											; 39>40
					point=600
					if ev18=0 : buffer 5 : picload "pass13a.bmp" : gsel 0 : else : buffer 5 : picload "pass13b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=650
					figure=0
					gosub *mapmov
					mapwater=0
					map=40 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=40)&(cx>630) {											; 40>39
					point=40
					buffer 5 : picload "room23a.bmp" : gsel 0
					buffer 10 : picload "room23b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					mapwater=1
					map=39 : scl=0
				}
				if (map=37)&(cx>=289)&(cx<=292)&(sclp<=340)&(sclp>=270)&(gkup=1) {			; 37>38
					point=650 : dir=0
					buffer 5 : picload "room26a.bmp" : gsel 0
					buffer 10 : picload "room26b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					mapwater=1
					map=38 : scl=0
				}
				if (map=38)&(cx>700) {											; 38>37
					point=290 : dir=0
					buffer 5 : picload "pass10a.bmp" : gsel 0
					buffer 10 : picload "pass10b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-315 : canmovL=-30 : canmovR=650
					figure=1
					gosub *mapmov
					mapwater=1
					map=37 : scl=1 : sclp=315 : sclM=400 : gendo=-400
					etype=6
					enx=0
				}
				if (map=39)&(cx>=270)&(cx<=330)&(gkup=1) {										; 39>42
					point=650 : dir=0
					buffer 5 : picload "pass11a.bmp" : gsel 0
					buffer 10 : picload "pass11b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=2
					gosub *mapmov
					mapwater=1
					map=42 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=6,6
					enx=200,-200
				}
				if (map=42)&(cx>=680) {			; 42>39
					point=295 : dir=0
					buffer 5 : picload "room23a.bmp" : gsel 0
					buffer 10 : picload "room23b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					mapwater=1
					map=39 : scl=0
				}
				if (map=42)&(cx<0) {			; 42>43
					point=600
					if ev22=0 : buffer 5 : picload "room24a.bmp" : gsel 0 : else : buffer 5 : picload "room24b.bmp" : gsel 0 
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					if drag1.2=0 : mapitem=1 : itemx=215 : itemy=440 : Icolor=24
					gosub *mapmov
					mapwater=0
					map=43 : scl=0
				}
				if (map=43)&(cx>=630) {										; 43>42
					point=30
					buffer 5 : picload "pass11a.bmp" : gsel 0
					buffer 10 : picload "pass11b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=2
					mapitem=0
					gosub *mapmov
					mapwater=1
					map=42 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=6,6
					enx=800,500
				}
				if (map=43)&(cx<30) {										; 43>44
					point=650
					buffer 5 : picload "pass12a.bmp" : gsel 0
					buffer 10 : picload "pass12b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=400 : canmovL=30 : canmovR=800
					figure=4
					mapitem=0
					gosub *mapmov
					mapwater=1
					map=44 : scl=1 : sclp=-400 : sclM=400 : gendo=-400
					etype=6,6,6,2
					enx=-200,0,300,0
				}
				if (map=44)&(cx>700) {			; 44>43
					point=40
					if ev22=0 : buffer 5 : picload "room24a.bmp" : gsel 0 : else : buffer 5 : picload "room24b.bmp" : gsel 0 
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					if drag1.2=0 : mapitem=1 : itemx=215 : itemy=440 : Icolor=24
					gosub *mapmov
					mapwater=0
					map=43 : scl=0
				}
				if (map=40)&(cx<388)&(cx>308)&(gkup=1) {										; 40>46
					point=650
					buffer 5 : picload "pass11a.bmp" : gsel 0
					buffer 10 : picload "pass11b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=400 : canmovL=-30 : canmovR=800
					figure=41
					gosub *mapmov
					mapwater=1
					map=46 : scl=1 : sclp=-400 : sclM=400 : gendo=-400
					etype=6
					enx=0
					repeat enam-1
					etype.(cnt+1)=5
					enx.(cnt+1)=-400+rnd(500)
					loop
					
				}
				if (map=46)&(cx>700) {										; 46>40
					point=348
					if ev18=0 : buffer 5 : picload "pass13a.bmp" : gsel 0 : else : buffer 5 : picload "pass13b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=400 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					mapwater=0
					map=40 : scl=1 : sclp=-400 : sclM=400 : gendo=-400
				}
				if (map=46)&(cx<0) {			; 46>47
					point=650
					if ev17=0 : buffer 5 : picload "room25a.bmp" : gsel 0 : else : buffer 5 : picload "room25b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					mapwater=0
					map=47 : scl=0
				}
				if (map=47)&(cx>700) {										; 47>46
					point=40
					buffer 5 : picload "pass11a.bmp" : gsel 0
					buffer 10 : picload "pass11b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=41
					gosub *mapmov
					mapwater=1
					map=46 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=6
					enx=800
					repeat enam-1
					etype.(cnt+1)=5
					enx.(cnt+1)=1200-rnd(400)
					loop
				}
				if (map=40)&(cx<0) {										; 40>41
					point=600
					buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp" : gsel 0 : redraw 0
					buffer 5 : picload "room27a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=112 : canmovR=800
					figure=0
					gosub *mapmov
					mapwater=0
					map=41 : scl=0 : nure=0
				}
				if (map=41)&(cx>650) {										; 41>40
					point=30
					buffer 5 : picload "pass13b.bmp" : gsel 0 : omoT=0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800 : dir=0
					figure=0
					gosub *mapmov
					mapwater=0
					map=40 : scl=1 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=43)&(cx>=290)&(cx<=435)&(gkup=1)&(ev22=1) {				; 43>45
					if itemII=0 {
						point=650 : dir=0 : kawaki=5000
						buffer 5 : picload "roomblack.bmp"
						buffer 9 : picload "filterc.bmp" : gsel 0
						mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=253 : canmovR=650
						mapitem=0
						figure=0
						gosub *mapmov
						mapwater=0
						map=45 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					}
					else {
						pos 0,0 : color 255,255,255 :  mes "�����J���Ȃ��悤��" : wait 30 : gosub *read : wait 30
					}
				}
				if (map=21)&(ev24=1)&(cx>=280)&(cx<=350)&(gkup=1) {         ;21>49
					stage=4 : dir=1
					point=100
					buffer 5 : picload "room30a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=49 : scl=0
					if savep.1<=2 : savep=3131196,3 : bsave "save.dat", savep
				}
				if (map=47)&(cx<=380)&(cx>=300)&(gkup=1) {										; 47>48
					point=80 : dir=1 : life=100 : bagT=0 : bagbag=0 : bagnam=0 : nure=0
					buffer 5 : picload "room29a.bmp" : gsel 0
					buffer 10 : picload "bag.bmp" : gsel 0
					repeat enam
					bagfly_on.cnt=0
					loop
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=600
					figure=0
					gosub *mapmov
					mapwater=0
					map=48 : scl=0 : nure=0
				}
				if (map=49)&(cx>=700) {									; 49>50
					point=30
					buffer 5 : picload "pass14b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=3
					gosub *mapmov
					map=50 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=8,1,1
					enx=800,800,300
				}
				if (map=50)&(cx<=0) {									; 50>49
					point=650
					buffer 5 : picload "room30a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=49 : scl=0
				}
				if (map=50)&(cx>=700) {									; 50>51
					point=30
					buffer 5 : picload "room31a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=51 : scl=0
				}
				if (map=51)&(cx<=0) {									; 51>50
					point=650
					buffer 5 : picload "pass14b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=3
					gosub *mapmov
					map=50 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=8,1,1
					enx=-200,-100,500
				}
				if (map=51)&(cx>=700) {									; 51>52
					point=30
					buffer 5 : picload "room32a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=52 : scl=0
				}
				if (map=52)&(cx<=0) {									; 52>51
					point=650
					buffer 5 : picload "room31a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=51 : scl=0
				}
				if (map=52)&(cx>=700) {									; 52>53
					point=30
					buffer 5 : picload "room33a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=600
					if drag2.1=0 : mapitem=1 : itemx=700 : itemy=440 : Icolor=8
					figure=5
					gosub *mapmov
					map=53 : scl=0
					etype=1,1,1,1,8
					enx=200,300,400,500,600
				}
				if (map=53)&(cx<=0) {									; 53>52
					point=650
					buffer 5 : picload "room32a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=52 : scl=0
				}
				if (map=49)&(cx>=345)&(cx<=430)&(gkup=1) {									; 49>54
					point=650 : dir=0
					buffer 5 : picload "pass15a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=3
					gosub *mapmov
					map=54 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=1,8,8
					enx=100,200,500
					
				}
				if (map=54)&(cx>=700) {									; 54>49
					point=390
					buffer 5 : picload "room30a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=49 : scl=0
				}
				if (map=54)&(cx<=0) {									; 54>62
					point=650
					buffer 5 : picload "room34a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=62 : scl=0
				}
				if (map=62)&(cx>=700) {									; 62>54
					point=30 : dir=1
					buffer 5 : picload "pass15a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=3
					gosub *mapmov
					map=54 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=1,8,8
					enx=300,500,800
				}
				if (map=51)&(cx>=340)&(cx<=445)&(gkup=1)  {						; 51>58
					point=650 : dir=0
					buffer 5 : picload "pass16a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=3
					gosub *mapmov
					map=58 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=4,6,8
					enx=-200,100,100
				}
				if (map=58)&(cx>=700) {									; 58>51
					point=390
					buffer 5 : picload "room31a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=51 : scl=0
				}
				if (map=62)&(cx>=340)&(cx<=430)&(gkup=1)  {						; 62>63
					point=650 : dir=0
					if ev27=0 : buffer 5 : picload "pass17a.bmp" : gsel 0 : else : buffer 5 : picload "pass17b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=4
					gosub *mapmov
					map=63 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=4,4,4,4
					enx=-600+rnd(700),-600+rnd(700),-600+rnd(700),-600+rnd(700)
				}
				if (map=63)&(cx>=700) {									; 63>62
					point=395
					buffer 5 : picload "room34a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=62 : scl=0
				}
				if (map=63)&(cx<=0) {									; 63>64
					point=650
					buffer 5 : picload "room35a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=64 : scl=0
				}
				if (map=64)&(cx>=700)  {						; 64>63
					point=30 : dir=1
					if ev27=0 : buffer 5 : picload "pass17a.bmp" : gsel 0 : else : buffer 5 : picload "pass17b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=4
					gosub *mapmov
					map=63 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=4,4,4,4
					enx=200+rnd(800),200+rnd(800),200+rnd(800),200+rnd(800)
				}
				if (map=64)&(cx>=330)&(cx<=440)&(gkup=1)  {						; 64>58
					point=30 : dir=1
					buffer 5 : picload "pass16a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=3
					gosub *mapmov
					map=58 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=4,6,8
					enx=600,500,500
				}
				if (map=58)&(cx<=0) {									; 58>64
					point=380
					buffer 5 : picload "room35a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=64 : scl=0
				}
				if (map=50)&(sclp>=10)&(sclp<=100)&(gkup=1)  {						; 50>55
					if ev26=1 {
						point=650 : dir=0
						buffer 5 : picload "pass18a.bmp" : gsel 0
						mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
						figure=3
						gosub *mapmov
						map=55 : scl=1 : sclp=400 : sclM=400 : gendo=-400
						etype=3,6,1
						enx=200,-500,500
					}
					else {
						pos 0,0 : color 255,255,255 :  mes "�����������Ă���" : wait 30 : gosub *read : wait 30
					}
				}
				if (map=55)&(cx>=700) {						; 55>50
					point=290 : dir=0
					buffer 5 : picload "pass14b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-55 : canmovL=-30 : canmovR=800
					figure=2
					gosub *mapmov
					map=50 : scl=1 : sclp=55 : sclM=400 : gendo=-400
					etype=1,8
					enx=100,900
				}
				if (map=55)&(sclp>=20)&(sclp<=70)&(down=1)&(gkz=1) {			; 55>56
					point=340
					buffer 5 : picload "room37a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=600
					if itemJ=0 : mapitem=1 : itemx=130 : itemy=440 : Icolor=32
					figure=0
					gosub *mapmov
					map=56 : scl=0
				}
				if (map=56)&(cx>=310)&(cx<=370)&(down=1)&(gkz=1) {				; 56>55
					point=290 : dir=0
					buffer 5 : picload "pass18a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-45 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=3
					gosub *mapmov
					map=55 : scl=1 : sclp=45 : sclM=400 : gendo=-400
					etype=4,6,8
					enx=100,500,500
				}
				if (map=64)&(cx<=90)&(gkz=1)&(dir=0) {									; 64>65
					if ev28=1 {
						if ev25=0{
							point=800
							buffer 5 : picload "room38a.bmp" : gsel 0
							mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
							figure=0
							gosub *mapmov
							map=65 : scl=0 : gkx=0 : dash=0 : stun=1
						}
						else{
							point=650
							buffer 5 : picload "room38a.bmp" : gsel 0
							mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
							figure=0
							gosub *mapmov
							map=65 : scl=0
						}
					}
					else {
						pos 0,0 : color 255,255,255 :  mes "�����������Ă���" : wait 30 : gosub *read : wait 30
					}
				}
				if (map=65)&(cx>=700)&(ev25=1) {									; 65>64
					point=80
					buffer 5 : picload "room35a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					gosub *mapmov
					map=64 : scl=0
				}
				if (map=65)&(cx<=0) {									; 65>66
					point=650
					buffer 5 : picload "room39a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					figure=0
					if drag1.3=0 : mapitem=1 : itemx=130 : itemy=440 : Icolor=24
					gosub *mapmov
					map=66 : scl=0
				}
				if (map=66)&(cx>=700) {									; 66>65
					point=30
					buffer 5 : picload "room38a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=65 : scl=0
				}
				if (map=63)&(cx>=330)&(cx<=440)&(gkup=1)&(ev27=1) {			; 63>55
					point=30 : dir=1
					buffer 5 : picload "pass18a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=55 : scl=1 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=55)&(cx<=0) {			; 55>63
					point=380
					buffer 5 : picload "pass17b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					figure=4
					gosub *mapmov
					map=63 : scl=1 : sclp=400 : sclM=400 : gendo=-400 : ev27=1
					etype=1,8,8,2
					enx=-100,300,400,-300
				}
				if (map=65)&(cx<=380)&(cx>=300)&(down=1)&(gkz=1) {			; 65>61
					point=140 : dir=1
					buffer 5 : picload "pass19a.bmp" : gsel 0
					buffer 10 : picload "unknown.bmp" : gsel 0
					mapsizeX=2000 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=630
					figure=0
					gosub *mapmov
					map=61 : scl=1 : sclp=0 : sclM=1200 : gendo=-1200
										if ev29=1 {
						en.0=1 : etype.0=7 : enx.0=2000
					}
				}
				if (map=61)&(cx>=90)&(cx<=160)&(gkup=1) {						; 61>65
					point=340
					buffer 5 : picload "room38a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					figure=0
					gosub *mapmov
					map=65 : scl=0
				}
				if (map=61)&(cx>=540)&(gkup=1) {						; 61>60
					point=290 : from61=1 : dir=1
					if itemK=0 {
						buffer 5 : picload "room40c.bmp" : gsel 0
					}
					else {
						if ev29=0 : buffer 5 : picload "room40b.bmp" : gsel 0 : else : buffer 5 : picload "room40a.bmp" : gsel 0 
					}
					mapsizeX=1800 : mapsizeY=600 : mappos=-80 : canmovL=0 : canmovR=800
					figure=0
					gosub *mapmov
					map=60 : scl=1 : sclp=80 : sclM=1000 : gendo=-1000
				}
				if (map=60)&(sclp<=50)&(gkz=1) {						; 60>61
					if (ev31=0)&(itemK=1) {
						pos 0,0 : color 255,255,255 :  mes "�Z���̕���\n       �w��ΐU������ȁx\n�ƈ����~�����悤�Ȏ��ŏ�����Ă���" : redraw 1 : wait 30 : gosub *read : redraw 0 : ev31=1
					}
					point=565 : from61=0 : dir=0
					buffer 5 : picload "pass19a.bmp" : gsel 0
					buffer 10 : picload "unknown.bmp" : gsel 0
					mapsizeX=2000 : mapsizeY=600 : mappos=-1200 : canmovL=70 : canmovR=630
					figure=0
					gosub *mapmov
					map=61 : scl=1 : sclp=1200 : sclM=1200 : gendo=-1200
				}
				if (map=58)&(sclp<=100)&(sclp>0)&(gkup=1) {						; 58>59
					point=370 : from58=1 : dir=0 : gkup=0 : wait 30
					if itemK=0 {
						buffer 5 : picload "room40c.bmp" : gsel 0
					}
					else {
						if ev29=0 : buffer 5 : picload "room40b.bmp" : gsel 0 : else : buffer 5 : picload "room40a.bmp" : gsel 0 
					}
					mapsizeX=1800 : mapsizeY=600 : mappos=-1000 : canmovL=0 : canmovR=630
					if itemL=0 : mapitem=1 : itemx=120 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=59 : scl=1 : sclp=1000 : sclM=1000 : gendo=-1000
				}	
				if (map=59)&(cx<=420)&(sclp>=320)&(gkup=1) {						; 59>58
					point=290 : from58=0 : dir=0 : gkup=0 : wait 30
					buffer 5 : picload "pass16a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-50 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=3
					gosub *mapmov
					map=58 : scl=1 : sclp=50 : sclM=400 : gendo=-400
					etype=1,6,8
					enx=600,700,1000
				}
				if (map=50)&(cx>=400)&(cx<=480)&(gkup=1) {			; 50>57
					point=650 : dir=0
					buffer 5 : picload "room36a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					if drag1.4=0 : mapitem=1 : itemx=300 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=57 : scl=0
				}
				if (map=57)&(cx>=700){						; 57>50
					point=440
					buffer 5 : picload "pass14b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=1
					gosub *mapmov
					map=50 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=8
					enx=500
				}
				if (map=67)&(cx>=420)&(down=1)&(gkz=1){						; 67>57
					point=200 : dir=1
					buffer 5 : picload "room36a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					if drag1.4=0 : mapitem=1 : itemx=300 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=57 : scl=0 : wait 30
				}
				if (map=57)&(cx<=120)&(gkz=1){						; 57>67
					point=500 : dir=0
					buffer 5 : picload "pass20a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=585
					mapitem=0
					figure=0
					gosub *mapmov
					map=67 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=67)&(cx<=30){						; 67>68
					point=650
					buffer 5 : picload "pass20b.bmp" : gsel 0
					mapsizeX=1168 : mapsizeY=600 : mappos=-368 : canmovL=-900 : canmovR=800
					if (drag2.2=0)&(itemK=1) : mapitem=1 : itemx=-120 : itemy=440 : Icolor=8
					figure=0
					gosub *mapmov
					map=68 : scl=1 : sclp=368 : sclM=368 : gendo=-368
				}
				if (map=68)&(cx>=680){						; 68>67
					point=70
					buffer 5 : picload "pass20a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=585
					mapitem=0
					figure=0
					gosub *mapmov
					map=67 : scl=1 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=68)&(cx<=-40){						; 68>69
				if ev33=0{
					point=650
					buffer 5 : picload "room41a.bmp" : gsel 0
					buffer 10 : picload "setbiyaku.bmp"
					buffer 13 : picload "last.bmp"
					buffer 15 : picload "slowthm.bmp" 
					buffer 21 : picload "lustdell.bmp"
					buffer 17 : picload "lust2.bmp" : gsel 0 : redraw 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=69 : scl=0 : stun=1 : gkx=0 : dash=0
				}
				else {
					point=650
					buffer 5 : picload "roomhoso.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=660
					mapitem=0
					figure=0
					gosub *mapmov
					map=70 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					if savep.1<=3 : savep=4822132,4 : bsave "save.dat", savep
				}
				}
				if (map=69)&(cx>=700)&(ev33=1){						; 69>68
					point=70
					buffer 5 : picload "pass20b.bmp" : gsel 0
					mapsizeX=1168 : mapsizeY=600 : mappos=0 : canmovL=-900 : canmovR=800
					mapitem=0
					figure=0
					lustlast=0
					gosub *mapmov
					map=68 : scl=1 : sclp=0 : sclM=368 : gendo=-368
				}
				if (map=69)&(cx<-30)&(BOSSE=0)&(lustlast=0)&(ev33=1){;69>70
					point=650
					buffer 5 : picload "roomhoso.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=660
					mapitem=0
					figure=0
					gosub *mapmov
					map=70 : scl=1 : sclp=400 : sclM=400 : gendo=-400 : stage=5
					if savep.1<=3 : savep=4822132,4 : bsave "save.dat", savep
				}
				if (map=71)&(cx<60)&(dir=0)&(gkz=1){
					pos 0,0 : color 255,255,255 :  mes "���ւ��A����K�v�͂Ȃ�" : wait 30 : gosub *read : wait 30
				}
				if (map=73)&(cx>630)&(dir=1)&(gkz=1){
					pos 0,0 : color 255,255,255 :  mes "�����C��\n���͊֌W�Ȃ�" : wait 30 : gosub *read : wait 30
				}
				if (map=73)&(sclp<130)&(dir=0)&(gkz=1){
					pos 0,0 : color 255,255,255 :  mes "�������͌��ւ��E�E�E\n���͊֌W�Ȃ�" : wait 30 : gosub *read : wait 30
				}
				if (map=73)&(cx>508)&(cx<604)&(gkup=1){
					pos 0,0 : color 255,255,255 :  mes "�g�C�����E�E�E\n���͂�������厖�Ȏ�������" : wait 30 : gosub *read : wait 30
				}
				if (map=71)&(sclp>620)&(sclp<740)&(gkup=1){
					pos 0,0 : color 255,255,255 :  mes "���̊�10�΂ɂȂ���\n���̌b���̕�����" : wait 30 : gosub *read : wait 30
				}
				if (map=71)&(sclp>100)&(sclp<240)&(gkup=1){
					pos 0,0 : color 255,255,255 :  mes "���̕������E�E�E�E\n���͈ꍏ����������������ɉ����" : wait 30 : gosub *read : wait 30
				}
				if (map=70)&(cx<=-30){						; 70>71
					point=292 : dir=1 : stage=5
					buffer 5 : picload "pass21a.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-176 : canmovL=35 : canmovR=632
					mapitem=0
					figure=0					
					gosub *mapmov
					map=71 : scl=1 : sclp=176 : sclM=800 : gendo=-800 : life=100 : stmn=1000
				}
				if (map=71)&(cx>540)&(gkup=1){						; 71>73
					point=300 : dir=0
					buffer 5 : picload "pass22a.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=70 : canmovR=660
					mapitem=0
					figure=0
					gosub *mapmov
					map=73 : scl=1 : sclp=800 : sclM=800 : gendo=-800
				}
				if (map=73)&(sclp>=260)&(sclp<=400)&(gkup=1){						; 73>75
					point=70 : dir=1
					buffer 5 : picload "room42a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=35 : canmovR=240
					mapitem=0
					figure=0
					gosub *mapmov
					color 0,0,0 : boxf 0,0,800,600 : color 255,255,255
					map=75 : scl=0 : sclM=0
				}
				if (map=74)&(sclp>=260)&(sclp<=400)&(gkup=1){						; 74>75
					point=70 : dir=1
					if ev37=0{
						buffer 5 : picload "room42a.bmp" : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=35 : canmovR=240
						mapitem=0
					}
					else{
						buffer 5 : picload "room42b.bmp" : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=35 : canmovR=650
						if drag2.3=0 : mapitem=1 : itemx=600 : itemy=440 : Icolor=8
					}
					
					figure=1
					gosub *mapmov
					map=75 : scl=0 : sclM=0
					etype=13
					enx=650
				}
				if (map=75)&(cx<60)&(gkz=1){						; 75>74
					point=292 : dir=1
					buffer 5 : picload "pass22b.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-330 : canmovL=70 : canmovR=660
					mapitem=0
					figure=5
					gosub *mapmov
					map=74 : scl=1 : sclp=330 : sclM=800 : gendo=-800
					etype=9,9,9,9,10
					edir=rnd(2),rnd(2),rnd(2),rnd(2)
					enx=300+rnd(650),300+rnd(650),300+rnd(650),300+rnd(650),1200
				}
				if (map=74)&(cx>=650){						; 74>77
					point=175 : dir=1
					buffer 5 : picload "room44a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=550
					mapitem=0
					figure=0
					gosub *mapmov
					map=77 : scl=0 : sclM=0
				}
				if (map=77)&(cx>=330)&(cx<=440)&(gkup=1){						; 77>78
					point=175 : dir=1
					buffer 5 : picload "room44b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=227
					mapitem=0
					figure=0
					gosub *mapmov
					map=78 : scl=0 : sclM=0
				}
				if (map=78)&(cx>200)&(gkup=1){						; 78>82
					point=290 : dir=1
					buffer 5 : picload "pass23a.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=650
					mapitem=0
					figure=5
					gosub *mapmov
					map=82 : scl=1 : sclp=0 : sclM=800 : gendo=-800
					etype=9,9,9,9,12
					enx=rnd(1000),rnd(1000),rnd(1000),rnd(1000),800
					endir=rnd(2),rnd(2),rnd(2),rnd(2)
				}
				if (map=82)&(cx>=175)&(cx<=282)&(gkup=1){						; 82>78
					point=200 : dir=0
					buffer 5 : picload "room44b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=227
					mapitem=0
					figure=0
					gosub *mapmov
					map=78 : scl=0 : sclM=0
				}
				if (map=82)&(cx>540)&(gkup=1){						; 82>79
					point=200
					buffer 5 : picload "room46a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=35 : canmovR=660
					if itemM=0 : mapitem=1 : itemx=550 : itemy=440 : Icolor=40
					figure=4
					gosub *mapmov
					map=79 : scl=0 : sclM=0
					etype=9,9,9,13
					enx=rnd(650),rnd(650),rnd(650),650
				}
				if (map=79)&(cx<300)&(cx>230)&(gkup=1){						; 79>82
					point=530
					buffer 5 : picload "pass23a.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=5
					gosub *mapmov
					map=82 : scl=1 : sclp=800 : sclM=800 : gendo=-800
					etype=9,9,9,9,12
					enx=-400+rnd(1000),-400+rnd(1000),-400+rnd(1000),-400+rnd(1000),0
					endir=rnd(2),rnd(2),rnd(2),rnd(2)
				}
				if (map=77)&(cx<100){						; 77>74
					point=630
					buffer 5 : picload "pass22b.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=4
					gosub *mapmov
					map=74 : scl=1 : sclp=800 : sclM=800 : gendo=-800
					etype=9,9,9,10
					enx=-400+rnd(1000),-400+rnd(1000),-400+rnd(1000),-200
					endir=rnd(2),rnd(2),rnd(2)
				}
				if (map=78)&(cx<100){						; 78>77
					point=385
					buffer 5 : picload "room44a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=77 : scl=0 : sclM=0
				}
				if (map=74)&(cx>508)&(cx<604)&(gkup=1){						; 74>76
					point=272 : dir=1
					buffer 5 : picload "room43a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=226 : canmovR=420
					mapitem=0
					figure=0
					gosub *mapmov
					map=76 : scl=0 : sclM=0
				}
				if (map=76)&(cx<280)&(gkz=1){						; 76>74
					point=560 : dir=0
					buffer 5 : picload "pass22b.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=70 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=74 : scl=1 : sclp=800 : sclM=800 : gendo=-800
				}
				if (map=76)&(cx>400)&(gkz=1){						; 76>dead
					dead=23 : gosub *event_dead
				}
				if (map=74)&(cx<390)&(sclp>720)&(gkup=1){						; 74>72
					point=530 : dir=0
					buffer 5 : picload "pass21b.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=35 : canmovR=632
					mapitem=0
					figure=6
					gosub *mapmov
					map=72 : scl=1 : sclp=800 : sclM=800 : gendo=-800
					etype=9,9,9,9,10,12
					enx=-400+rnd(1000),-400+rnd(1000),-400+rnd(1000),-400+rnd(1000),-200,-400
					endir=rnd(2),rnd(2),rnd(2),rnd(2)
				}
				if (map=72)&(cx>540)&(gkup=1){						; 72>74
					point=300 : dir=0
					buffer 5 : picload "pass22b.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=70 : canmovR=660
					mapitem=0
					figure=4
					gosub *mapmov
					map=74 : scl=1 : sclp=800 : sclM=800 : gendo=-800
					etype=9,9,9,10
					enx=-400+rnd(1000),-400+rnd(1000),-400+rnd(1000),-400
					endir=rnd(2),rnd(2),rnd(2)
				}
				if (map=72)&(sclp>620)&(sclp<740)&(gkup=1){						; 72>80
					if ev37=1 {
						point=100 : dir=1
						buffer 5 : picload "room45a.bmp" : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=50 : canmovR=660
						if drag1.5=0 : mapitem=1 : itemx=400 : itemy=440 : Icolor=24
						figure=1
						lustlast=0
						gosub *mapmov
						map=80 : scl=0 : sclM=0
						etype=14
						enx=650
					}
					else {
						pos 0,0 : color 255,255,255 :  mes "�����������Ă���" : wait 30 : gosub *read : wait 30
					}
				}
				if (map=72)&(sclp>100)&(sclp<240)&(gkup=1){
					pos 0,0 : color 255,255,255 :  mes "�������Ă��ĊJ���Ȃ��悤��" : wait 30 : gosub *read : wait 30
				}
				if (map=72)&(cx<70)&(dir=0)&(gkz=1){
					if ev38=1{
						point=630 : dir=0
						buffer 5 : picload "room46a.bmp" : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=35 : canmovR=660
						if itemM=0 : mapitem=1 : itemx=550 : itemy=440 : Icolor=40
						figure=7
						lustlast=0
						gosub *mapmov
						map=79 : scl=0 : sclM=0
						etype=9,9,9,9,9,9,9
						enx=rnd(650),rnd(650),rnd(650),rnd(650),rnd(650),rnd(650),rnd(650)
						endir=rnd(2),rnd(2),rnd(2),rnd(2),rnd(2),rnd(2),rnd(2)
					}
					else{
						pos 0,0 : color 255,255,255 :  mes "�������献���������Ă���" : wait 30 : gosub *read : wait 30
					}
				}
				if (map=79)&(cx>650){						;79>72
					point=70 : dir=1
					buffer 5 : picload "pass21b.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=0 : canmovL=35 : canmovR=632
					mapitem=0
					figure=7
					lustlast=0
					gosub *mapmov
					map=72 : scl=1 : sclp=0 : sclM=800 : gendo=-800 : ev38=1
					etype=9,9,9,9,9,12,10
					enx=rnd(1200),rnd(1200),rnd(1200),rnd(1200),rnd(1200),400,1000
					endir=rnd(2),rnd(2),rnd(2),rnd(2),rnd(2)
				}
				if (map=80)&(cx<120)&(gkz=1){						;80>72
					point=290 : dir=1
					buffer 5 : picload "pass21b.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-680 : canmovL=35 : canmovR=632
					mapitem=0
					figure=7
					lustlast=0
					gosub *mapmov
					map=72 : scl=1 : sclp=680 : sclM=800 : gendo=-800
					etype=9,9,9,9,9,12,13
					enx=-600+rnd(800),-600+rnd(800),-600+rnd(800),-600+rnd(800),-600+rnd(800),-100,1000
					endir=rnd(2),rnd(2),rnd(2),rnd(2),rnd(2)
				}
				if (map=80)&(cx>650){						; 80>83
					point=100 : dir=1
					buffer 5 : picload "room47a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-10 : canmovR=660
					mapitem=0
					figure=0
					lustlast=0
					gosub *mapmov
					map=83 : scl=0 : sclM=0
				}
				if (map=83)&(cx<150)&(cx>20)&(gkup=1){						; 83>80
					point=630 : dir=0
					buffer 5 : picload "room45a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=50 : canmovR=660
					mapitem=0
					figure=1
					lustlast=0
					gosub *mapmov
					map=80 : scl=0 : sclM=0
					etype=14
					enx=100
				}
				if (map=83)&(cx>500)&(gkup=1){						; 83>81
					point=630 : dir=0
					buffer 5 : picload "room48a.bmp"
					buffer 10 : picload "grutony2.bmp"
					buffer 13 : picload "grutony.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=660
					mapitem=0
					figure=0
					lustlast=0
					gosub *mapmov
					map=81 : scl=0 : sclM=0 : stun=1 : a=1 : dash=0 : gkx=0
				}
				if (map=81)&(cx>650){						; 81>85
					point=550 : dir=0
					buffer 5 : picload "room47b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-10 : canmovR=660
					mapitem=0
					figure=30
					lustlast=0
					gosub *mapmov
					map=85 : scl=0 : sclM=0
					repeat 30
					etype.cnt=5
					enx.cnt=rnd(300)
					loop
					
				}
				if (map=85)&(cx<150)&(cx>30)&(gkup=1){						; 85>86
					point=630 : dir=0
					buffer 5 : picload "room45b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=50 : canmovR=660
					mapitem=0
					figure=35
					lustlast=0
					slaimnum=3
					slaimx.0=30 : slaimx.1=100 : slaimx.2=300
					gosub *mapmov
					map=86 : scl=0 : sclM=0
					repeat 30
					etype.cnt=0
					enx.cnt=rnd(300)
					loop
					etype.30=9 : etype.31=9 : etype.32=9 : etype.33=9 : etype.34=9
					enx.30=rnd(600) : enx.31=rnd(600) : enx.32=rnd(600) : enx.33=rnd(600) : enx.34=rnd(600)
					endir.30=rnd(2) : endir.31=rnd(2) : endir.32=rnd(2) : endir.33=rnd(2) : endir.34=rnd(2)
					
				}
				if (map=86)&(cx<120)&(gkz=1){						;86>87
					point=290 : dir=1
					buffer 5 : picload "pass21c.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-680 : canmovL=35 : canmovR=660
					if drag2.4=0 : mapitem=1 : itemx=800 : itemy=440 : Icolor=8
					figure=7
					lustlast=0
					gosub *mapmov
					map=87 : scl=1 : sclp=680 : sclM=800 : gendo=-800
					etype.0=9 : etype.1=9 : etype.2=9 : etype.3=9 : etype.4=9
					enx.0=rnd(600) : enx.1=rnd(600) : enx.2=rnd(600) : enx.3=rnd(600) : enx.4=rnd(600)
					endir.0=rnd(2) : endir.1=rnd(2) : endir.2=rnd(2) : endir.3=rnd(2) : endir.4=rnd(2)
					etype.5=12 : etype.6=13
					enx.5=-200 : enx.6=-800
				}
				if (map=87)&(cx<70)&(dir=0)&(gkz=1){						; 87>88
					point=630 : dir=0
					buffer 5 : picload "room46b.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=50 : canmovR=660
					mapitem=0
					figure=35
					lustlast=0
					slaimnum=3
					slaimx.0=300 : slaimx.1=100 : slaimx.2=70
					floanum=1
					floax.0=200
					gosub *mapmov
					map=88 : scl=0 : sclM=0
					repeat 30
					etype.cnt=5
					enx.cnt=rnd(300)
					loop
					etype.30=9 : etype.31=9 : etype.32=9 : etype.33=9 : etype.34=9
					enx.30=rnd(600) : enx.31=rnd(600) : enx.32=rnd(600) : enx.33=rnd(600) : enx.34=rnd(600)
					endir.30=rnd(2) : endir.31=rnd(2) : endir.32=rnd(2) : endir.33=rnd(2) : endir.34=rnd(2)
				}
				if (map=88)&(cx<300)&(cx>230)&(gkup=1){						; 88>89
					point=530
					buffer 5 : picload "pass23b.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=37
					slaimnum=3
					slaimx.0=-300 : slaimx.1=-800 : slaimx.2=300
					floanum=2
					floax.0=-200 : floax.1=-500
					gosub *mapmov
					map=89 : scl=1 : sclp=800 : sclM=800 : gendo=-800
					repeat 30
					etype.cnt=5
					enx.cnt=rnd(300)
					loop
					etype.30=9 : etype.31=9 : etype.32=9 : etype.33=9 : etype.34=9
					enx.30=rnd(600) : enx.31=rnd(600) : enx.32=rnd(600) : enx.33=rnd(600) : enx.34=rnd(600)
					endir.30=rnd(2) : endir.31=rnd(2) : endir.32=rnd(2) : endir.33=rnd(2) : endir.34=rnd(2)
					etype.35=12 : etype.36=12 
					enx.35=100 : enx.36=-800
					
				}
				if (map=89)&(cx>=175)&(cx<=282)&(gkup=1){						; 89>90
					point=200 : dir=0
					buffer 5 : picload "room44d.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=227
					mapitem=0
					figure=0
					gosub *mapmov
					map=90 : scl=0 : sclM=0
					
				}
				if (map=90)&(cx<100){						; 90>91
					point=385
					buffer 5 : picload "room44c.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=550
					mapitem=0
					figure=35
					slaimnum=2
					slaimx.0=100 : slaimx.1=50
					gosub *mapmov
					map=91 : scl=0 : sclM=0
					repeat 30
					etype.cnt=5
					enx.cnt=rnd(300)
					loop
					etype.30=9 : etype.31=9 : etype.32=9 : etype.33=9 : etype.34=9
					enx.30=rnd(600) : enx.31=rnd(600) : enx.32=rnd(600) : enx.33=rnd(600) : enx.34=rnd(600)
					endir.30=rnd(2) : endir.31=rnd(2) : endir.32=rnd(2) : endir.33=rnd(2) : endir.34=rnd(2)
				}
				if (map=91)&(cx<100){						; 91>92
					point=630
					buffer 5 : picload "pass22c.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=37
					floanum=3
					floax.0=-200 : floax.1=-500 : floax.1=-1000
					gosub *mapmov
					map=92 : scl=1 : sclp=800 : sclM=800 : gendo=-800
					repeat 30
					etype.cnt=5
					enx.cnt=rnd(300)
					loop
					etype.30=9 : etype.31=9 : etype.32=9 : etype.33=9 : etype.34=9
					enx.30=rnd(600) : enx.31=rnd(600) : enx.32=rnd(600) : enx.33=rnd(600) : enx.34=rnd(600)
					endir.30=rnd(2) : endir.31=rnd(2) : endir.32=rnd(2) : endir.33=rnd(2) : endir.34=rnd(2)
					etype.35=12 : etype.36=13
					enx.35=-200 : enx.36=0
				}
				if (map=92)&(sclp>=260)&(sclp<=400)&(gkup=1){						; 92>93
					point=70 : dir=1
					buffer 5 : picload "room42c.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=35 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=93 : scl=0 : sclM=0
				}
				if (map=93)&(cx>=650){;93>94
					point=70 : dir=1
					buffer 5 : picload "roomhoso.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=0 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=94 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					BOSSF=0
				}
				if (map=94)&(cx>=650){;94>95
					point=70 : dir=1
					buffer 5 : picload "room49a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					poshill=0
					repeat enam
					kuthill.cnt=0
					loop
					map=95 : scl=0
					beruhiru=0
				}
				if (map=95)&(cx>=650){;95>96
					point=70 : dir=1
					buffer 5 : picload "pass24a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=0 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=96 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					beruhiru=0
				}
				if (map=96)&(cx<=30){;96>95
					point=630 : dir=0
					buffer 5 : picload "room49a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=95 : scl=0
				}
				if (map=96)&(cx>=650){;96>97
					point=100 : dir=1 : rusix=600
					buffer 5 : picload "pass24b.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=97 : scl=1 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=98)&(cx<=30){;98>99
					point=630
					buffer 5 : picload "pass25a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=400 : canmovL=70 : canmovR=800
					if drag1.8=0 : mapitem=1 : itemx=-230 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=99 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=99)&(cx>=650){;99>98
					point=100
					buffer 5 : picload "room50a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=98 : scl=0 : sclM=0
				}
				if (map=99)&(cx>=220)&(sclp<=30)&(gkz=1)&(down=1){;99>113
					point=350
					buffer 5 : picload "room53a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=113 : scl=0 : sclM=0 : wait 30
				}
				if (map=113)&(cx>=310)&(cx<=390)&(gkz=1)&(down=1){;113>99
					point=260
					buffer 5 : picload "pass25a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					if drag1.8=0 : mapitem=1 : itemx=170 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=99 : scl=1 : sclp=0 : sclM=400 : gendo=-400 : wait 30
				}
				if (map=113)&(cx<=30){;113>112
					point=630
					buffer 5 : picload "room59a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=112 : scl=0 : sclM=0
				}
				if (map=112)&(cx>=310)&(cx<=420)&(gkup=1){;112>109
					point=630 : dir=0
					buffer 5 : picload "room60a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					if drag2.5=0 : mapitem=1 : itemx=150 : itemy=440 : Icolor=8
					figure=0
					gosub *mapmov
					map=109 : scl=0 : sclM=0
				}
				if (map=109)&(cx>=650){;109>112
					point=355
					buffer 5 : picload "room59a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=112 : scl=0 : sclM=0
				}
				if (map=112)&(cx>=650){;112>113
					point=70
					buffer 5 : picload "room53a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=113 : scl=0 : sclM=0
				}
				if (map=113)&(cx>=650){;113>114
					point=70
					buffer 5 : picload "room54a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=2
					gosub *mapmov
					map=114 : scl=0 : sclM=0
					etype=10,10
					enx=300,400
				}
				if (map=114)&(cx<=30){;114>113
					point=630
					buffer 5 : picload "room53a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=113 : scl=0 : sclM=0
				}
				if (map=114)&(cx>=650){;114>115
					point=70
					buffer 5 : picload "room55a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=115 : scl=0 : sclM=0
				}
				if (map=115)&(cx>=300)&(cx<=370)&(gkup=1){;115>110
					point=630 : dir=0
					buffer 5 : picload "room60a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
					if drag3.0=0 : mapitem=1 : itemx=150 : itemy=440 : Icolor=0
					figure=0
					gosub *mapmov
					map=110 : scl=0 : sclM=0
				}
				if (map=110)&(cx>=650){;110>115
					point=335
					buffer 5 : picload "room55a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=115 : scl=0 : sclM=0
				}
				if (map=115)&(cx<=30){;115>114
					point=630
					buffer 5 : picload "room54a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=2
					gosub *mapmov
					map=114 : scl=0 : sclM=0
					etype=10,10
					enx=300,400
				}
				if (map=115)&(cx>=650){;115>116
					point=70
					buffer 5 : picload "room56a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=116 : scl=0 : sclM=0
				}
				if (map=116)&(cx<=30){;116>115
					point=630
					buffer 5 : picload "room55a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=115 : scl=0 : sclM=0
				}
				if (map=116)&(cx>=550)&(gkz=1)&(down=1){;116>103
					point=290
					buffer 5 : picload "pass26a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-240 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=4
					gosub *mapmov
					map=103 : scl=1 : sclp=240 : sclM=400 : gendo=-400
					etype=3,3,3,2
					enx=0,700,800,900
				}
				if (map=103)&(sclp>=200)&(sclp<=300)&(gkz=1)&(down=1){;103>116
					point=580 : dir=0
					buffer 5 : picload "room56a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=116 : scl=0 : sclM=0
				}
				if (map=103)&(cx>=650){;103>102
					point=70
					buffer 5 : picload "pass29a.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=5
					gosub *mapmov
					map=102 : scl=1 : sclp=0 : sclM=800 : gendo=-800
					etype.0=9 : etype.1=9 : etype.2=9 : etype.3=3 : etype.4=3
					enx.0=rnd(600) : enx.1=rnd(600) : enx.2=rnd(600) : enx.3=400 : enx.4=500
					endir.0=rnd(2) : endir.1=rnd(2) : endir.2=rnd(2)
				}
				if (map=102)&(cx<=30){;102>103
					point=630
					buffer 5 : picload "pass26a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=4
					gosub *mapmov
					map=103 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					etype=3,3,3,2
					enx=0,100,-200,50
					
				}
				if (map=102)&(cx>=650){;102>101
					point=30
					buffer 5 : picload "pass64a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=101 : scl=1 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=101)&(cx<=0){;101>102
					point=630
					buffer 5 : picload "pass29a.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=-800 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=5
					gosub *mapmov
					map=102 : scl=1 : sclp=800 : sclM=800 : gendo=-800
					etype.0=9 : etype.1=9 : etype.2=9 : etype.3=3 : etype.4=3
					enx.0=rnd(600) : enx.1=rnd(600) : enx.2=rnd(600) : enx.3=-100 : enx.4=-300
					endir.0=rnd(2) : endir.1=rnd(2) : endir.2=rnd(2)
				}
				if (map=101)&(cx>=650){;101>100
					point=70
					buffer 5 : picload "room52a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=595
					if itemN=0 : mapitem=1 : itemx=600 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=100 : scl=0 : sclM=0
				}
				if (map=100)&(cx>=210)&(cx<=300)&(down=1)&(gkz=1){;100>123
					point=70 : dir=1
					cantsatnd=1 : semaimiti=1
					buffer 5 : picload "holl2a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=200
					mapitem=0
					figure=0
					gosub *mapmov
					map=123 : scl=0 : sclM=0 : down=1
				}
				if (map=123)&(cx<=30){;123>100
					point=255 : dir=0
					cantsatnd=0 : semaimiti=0
					buffer 5 : picload "room52a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=595
					if itemN=0 : mapitem=1 : itemx=600 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=100 : scl=0 : sclM=0 : down=0
				}
				if (map=100)&(cx<=30){;102>101
					point=630
					buffer 5 : picload "pass64a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=101 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=103)&(cx<=30){;103>104
					point=630
					buffer 5 : picload "pass27a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=80
					gosub *mapmov
					map=104 : scl=1 : sclp=400 : sclM=400 : gendo=-400
					repeat 80
					etype.cnt=5
					enx.cnt=rnd(300)
					loop
				}
				if (map=104)&(cx>650){;104>103
					point=70
					buffer 5 : picload "pass26a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=3
					gosub *mapmov
					map=103 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					etype=3,3,3
					enx=500,600,1000
				}
				if (map=104)&(cx<=30){;104>105
					point=650
					buffer 5 : picload "room51a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=105 : scl=0 : sclM=0
				}
				if (map=105)&(cx>650){;105>104
					point=70
					buffer 5 : picload "pass27a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=80
					gosub *mapmov
					map=104 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					repeat 80
					etype.cnt=5
					enx.cnt=rnd(300)
					loop
				}
				if (map=105)&(cx<=30){;105>106
					point=630
					buffer 5 : picload "pass28a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=70 : canmovR=800
					if drag2.6=0 : mapitem=1 : itemx=-200 : itemy=440 : Icolor=8
					figure=0
					gosub *mapmov
					map=106 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=106)&(cx>=650){;106>105
					point=70
					buffer 5 : picload "room51a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=105 : scl=0 : sclM=0
				}
				if (map=104)&(sclp>=170)&(sclp<=260)&(gkz=1)&(down=1){;104>117
					point=190
					if ev49=1 : buffer 5 : picload "room62a.bmp" : gsel 0 : else : buffer 5 : picload "room61a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					if drag1.7=0 : mapitem=1 : itemx=400 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=117 : scl=1 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=117)&(cx>=160)&(cx<=210)&(gkz=1)&(down=1){;117>104
					point=290
					buffer 5 : picload "pass27a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-220 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=104 : scl=1 : sclp=220 : sclM=400 : gendo=-400
				}
				if (map=117)&(cx>=650){;117>118
					point=70
					buffer 5 : picload "room57a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=118 : scl=0 : sclM=0
				}
				if (map=118)&(cx<=30){;118>117
					point=630
					if ev49=1 : buffer 5 : picload "room62a.bmp" : gsel 0 : else : buffer 5 : picload "room61a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=70 : canmovR=800
					if drag1.7=0 : mapitem=1 : itemx=0 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=117 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=118)&(cx>=330)&(cx<=390)&(gkz=1)&(down=1){;118>107
					point=290
					buffer 5 : picload "pass30a.bmp" : gsel 0
					mapsizeX=2000 : mapsizeY=600 : mappos=-980 : canmovL=-30 : canmovR=650
					if drag1.6=0 : mapitem=1 : itemx=800 : itemy=440 : Icolor=24
					figure=9
					gosub *mapmov
					map=107 : scl=1 : sclp=980 : sclM=1200 : gendo=-1200
					etype=4,4,4,4,4,4,4,4,4
					repeat 9
					enx=-800+rnd(500)
					loop

				}
				if (map=107)&(sclp>=940)&(sclp<=1020)&(gkz=1)&(down=1){;107>118
					point=350 : dir=0
					buffer 5 : picload "room57a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=118 : scl=0 : sclM=0
				}
				if (map=108)&(sclp>=350)&(cx<=292)&(gkz=1)&(down=1){;108>119
					point=350
					buffer 5 : picload "room58a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=155 : canmovR=550
					if itemO=0 : mapitem=1 : itemx=600 : itemy=440 : Icolor=8
					figure=0
					gosub *mapmov
					map=119 : scl=0 : sclM=0
				}
				if (map=119)&(cx>=320)&(cx<=410)&(gkz=1)&(down=1){;119>108
					point=290
					buffer 5 : picload "pass65a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-375 : canmovL=-100 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=108 : scl=1 : sclp=375 : sclM=400 : gendo=-400
				}
				if (map=107)&(cx<=30){;107>108
					point=630
					buffer 5 : picload "pass65a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-100 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=108 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=108)&(cx>=650){;108>107
					point=70
					buffer 5 : picload "pass30a.bmp" : gsel 0
					mapsizeX=2000 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=650
					if drag1.6=0 : mapitem=1 : itemx=1800 : itemy=440 : Icolor=24
					figure=9
					gosub *mapmov
					map=107 : scl=1 : sclp=0 : sclM=1200 : gendo=-1200
					etype=4,4,4,4,4,4,4,4,4
					repeat 9
					enx=300+rnd(1200)
					loop
				}
				if (map=108)&(cx<=-60){;108>98
					point=630
					buffer 5 : picload "room50a.bmp" : gsel 0
					mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
					mapitem=0
					figure=4
					gosub *mapmov
					map=98 : scl=0 : sclM=0
					etype=8,8,10,10
					enx=30,100,-200,-300
				}
				if (map=98)&(cx>=650){;98>108
					point=-20
					buffer 5 : picload "pass65a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-100 : canmovR=800
					mapitem=0
					figure=0
					gosub *mapmov
					map=108 : scl=1 : sclp=0 : sclM=400 : gendo=-400
				}
				if (map=106)&(sclp>=180)&(sclp<=400)&(gkup=1){;106>120
					if (ev44=1)&(ev48=0){
					point=80 : dir=1
					buffer 5 : picload "room63b.bmp"
					buffer 15 : picload "envyisi.bmp"
					buffer 17 : picload "pride2set.bmp"
					buffer 21 : picload "pride3set.bmp"
					buffer 23 : picload "prideeffe.bmp"
					buffer 25 : picload "naname.bmp"
					buffer 27 : picload "kaikyaku.bmp"
					buffer 29 : picload "pridesyoku.bmp"
					buffer 31 : picload "atack.bmp" : gsel 0
					mapsizeX=1600 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=650
					repeat enam
					kuthill.cnt=0
					ehit.cnt=0
					loop
					poshill=0
					mapitem=0
					figure=0
					gosub *mapmov
					map=120 : scl=1 : sclp=0 : sclM=800 : gendo=-800 : stun=1 : gkx=0 : dash=0 : bossmode=2
					}
					else{
							pos 0,0 : color 255,255,255 :  mes "�J���Ȃ��E�E�E" : wait 30 : gosub *read : wait 30
					}
				}
				if (map=120)&(cx<=30){;120>106
					point=290 : dir=1
					buffer 5 : picload "pass28a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-290 : canmovL=70 : canmovR=800
					if drag2.6=0 : mapitem=1 : itemx=-90 : itemy=440 : Icolor=8
					figure=0
					gosub *mapmov
					map=106 : scl=1 : sclp=290 : sclM=400 : gendo=-400 : bossmode=0
				}
				if (map=117)&(cx>=400)&(cx<=500)&(gkup=1){;117>111
					point=630 : dir=0
					buffer 5 : picload "pass31a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=-30 : canmovR=650
					mapitem=0
					figure=0
					gosub *mapmov
					map=111 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=111)&(cx>650){;111>117
					point=450
					if ev49=1 : buffer 5 : picload "room62a.bmp" : gsel 0 : else : buffer 5 : picload "room61a.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=70 : canmovR=800
					if drag1.7=0 : mapitem=1 : itemx=0 : itemy=440 : Icolor=24
					figure=0
					gosub *mapmov
					map=117 : scl=1 : sclp=400 : sclM=400 : gendo=-400
				}
				if (map=117)&(sclp>=170)&(sclp<=270)&(gkup=1){;117>122
					if ev49=1{
						point=70 : dir=1
						buffer 5 : picload "passlast.bmp" : gsel 0
						mapsizeX=3000 : mapsizeY=600 : mappos=0 : canmovL=0 : canmovR=800
						mapitem=0
						figure=0
						repeat enam
						kuthill.cnt=0
						ehit.cnt=0
						loop
						poshill=0
						gosub *mapmov
						map=122 : scl=1 : sclp=0 : sclM=2200 : gendo=-2200
						if savep.1<=5 : savep=6883715,6 : bsave "save.dat", savep
					}
					else{
						pos 0,0 : color 255,255,255 :  mes "�J���Ȃ��E�E�E" : wait 30 : gosub *read : wait 30
					}
				}
				if (map=122)&(cx>650){;���X�{�X
					point=100
					buffer 5 : picload "roomlast.bmp"
					buffer 10 : picload "lastback.bmp"
					buffer 13 : picload "leaslast.bmp"
					buffer 15 : picload "leaseffect.bmp"
					buffer 17 : picload "leaseffect2.bmp"
					buffer 21 : picload "open.bmp"
					buffer 23 : picload "slice.bmp"
					buffer 25 : picload "partsa.bmp"
					buffer 27 : picload "bomasi.bmp"
					buffer 29 : picload "mix.bmp"
					buffer 31 : picload "mahoujin.bmp" : gsel 0
					mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=600
					mapitem=0
					figure=0
					gosub *mapmov
					map=121 : scl=1 : sclp=0 : sclM=400 : gendo=-400
					pointcx=0.0 : leas_mx=0.0 : leas_my=0.0 : leassp=0.0
					leasneedler=0.0 : leasneedle2r=0.0 : leasballr=0.0 : leas_rayAr=0.0 : leas_rayBr=0.0 : leas_rayAx=0.0 : leas_rayBx=0.0
					leasactp5=0 : leasactp7=0 : leasactp8=0 : leasactp9=0 : leasactp10=0 : leasfx5=120 : sclob=0.0
					leas_mpat=8 : bossmode=4 : orbt=0 : mana=0 : orb=0 : haveorb=0
					repeat enam
					leasballx.cnt=0.0 : leasneedlex.cnt=0.0
					leasbally.cnt=0.0 : leasneedley.cnt=0.0
					loop
					leasballnum=0
					harinum=0
					stun=1 : gkx=0 : dash=0
				}
				

				
				
															;-------------------------���A�C�e���擾�n
				if (map=3)&(cx<=220)&(down=1)&(gkz=1)&(itemA=0) : itemA=1 : mapitem=0 : itemnam=1: gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�Âт����x���E����" : wait 30 : gosub *read
				if (map=5)&(cx<=122)&(down=0)&(gkz=1)&(itemB=0) : itemB=1 : mapitem=0 : itemnam=2: gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�����x���E����" : wait 30 : gosub *read
				if (map=16)&(cx<=115)&(down=0)&(gkz=1)&(itemC=0) : itemC=1 : mapitem=0 : itemnam=3: gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�����̘Z䊐��x���E����" : wait 30 : gosub *read : buffer 5 : picload "room12b.bmp" : gsel 0
				if (map=19)&(cx<=90)&(down=1)&(gkz=1)&(itemD=0) : itemD=1 : mapitem=0 : itemnam=4: gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�O�p�`�̐΁x���E����" : wait 30 : gosub *read
				if (map=35)&(cx<=300)&(cx>=200)&(down=1)&(gkz=1)&(itemF=0) : itemF=1 : mapitem=0 : itemnam=6: gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�S�̌��x���E����" : wait 30 : gosub *read
				if (map=36)&(cx<=120)&(down=1)&(gkz=1)&(itemG=0)&(BOSSC=0)&(ev16=1) : itemG=1 : mapitem=0 : itemnam=7: gosub *getitem : pos 0,0 : font "�l�r �S�V�b�N",30 :  color 255,255,255 :  mes "�w�����Ȍ��x���E����" : wait 30 : gosub *read : canmovR=800
				if (map=25)&(cx>530)&(down=1)&(gkz=1)&(itemG=1)&(itemH=0) : itemH=1 : mapitem=0 : itemnam=8 : gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�o���u�̃n���h���x���E����" : wait 30 : gosub *read
				if (map=56)&(cx<140)&(down=1)&(gkz=1)&(itemJ=0) : itemJ=1 : mapitem=0 : itemnam=10 : gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�K���X�̌��x���E����" : wait 30 : gosub *read
				if (map=59)&(sclp<840)&(down=1)&(gkz=1)&(itemL=0) : itemL=1 : mapitem=0 : itemnam=12 : gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�����̂������x���E����" : wait 30 : gosub *read
				if (map=60)&(sclp<430)&(sclp>310)&(down=1)&(gkz=1)&(itemK=0) : itemK=1 : mapitem=0 : itemnam=11 : gosub *getitem : buffer 5 : picload "room40b.bmp" : gsel 0 : pos 0,0 : color 255,255,255 :  mes "�w�^�J�̒Z���x���E����" : wait 30 : gosub *read
				if (map=79)&(cx<530)&(cx>390)&(down=1)&(gkz=1)&(itemM=0) : itemM=1 : mapitem=0 : itemnam=13 : gosub *getitem  : pos 0,0 : color 255,255,255 :  mes "�w�K�т������x���E����" : wait 30 : gosub *read
				if (map=100)&(cx>=440)&(down=1)&(gkz=1)&(itemN=0) : itemN=1 : mapitem=0 : itemnam=14 : gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�T���}���_�[�x���E����" : wait 30 : gosub *read : ev42=1 : ev43=1
				if (map=119)&(cx>=460)&(down=1)&(gkz=1)&(itemO=0) : itemO=1 : mapitem=0 : itemnam=15 : gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�E���f�B�[�l�x���E����" : wait 30 : gosub *read : ev41=1 : ev43=1
				if (map=120)&(ev48=1)&(sclp>=280)&(sclp<=530)&(down=1)&(gkz=1)&(itemQ=0) : itemQ=1 : mapitem=0 : itemnam=17 : gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w�����̃����[�t�x���E����" : wait 30 : gosub *read : canmovL=-30
				
				;------------�N�X���n��
				if (map=26)&(cx>=70)&(cx<=140)&(down=1)&(gkz=1)&(drag1.1=0) : drag1.1=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
				if (map=38)&(cx<=110)&(down=1)&(gkz=1)&(drag2.0=0) : drag2.0=1 : mapitem=0 : potion=-2: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w����x���E����" : wait 30 : gosub *read
				if (map=43)&(cx>=130)&(cx<=200)&(down=1)&(gkz=1)&(drag1.2=0) : drag1.2=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
				if (map=17)&(cx<=110)&(down=1)&(gkz=1)&(drag1.0=0) : drag1.0=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
				if (map=66)&(cx<=110)&(down=1)&(gkz=1)&(drag1.3=0) : drag1.3=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
				if (map=57)&(cx>=120)&(cx<=290)&(down=1)&(gkz=1)&(drag1.4=0) : drag1.4=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
				if (map=53)&(cx>=500)&(down=1)&(gkz=1)&(drag2.1=0) : drag2.1=1 : mapitem=0 : potion=-2: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w����x���E����" : wait 30 : gosub *read
				if (map=68)&(cx>=130)&(down=1)&(gkz=1)&(drag2.2=0) : drag2.2=1 : mapitem=0 : potion=-2: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w����x���E����" : wait 30 : gosub *read
				if (map=80)&(cx>=230)&(cx<=375)&(down=1)&(gkz=1)&(drag1.5=0) : drag1.5=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
				if (map=107)&(cx>=420)&(cx<=555)&(down=1)&(gkz=1)&(drag1.6=0) {
					drag1.6=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
					if rusi_on=1 : alert=1
				}
				if (map=117)&(cx>=250)&(sclp<=110)&(down=1)&(gkz=1)&(drag1.7=0) : drag1.7=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
				if (map=99)&(cx<=160)&(down=1)&(gkz=1)&(drag1.8=0) : drag1.8=1 : mapitem=0 : potion=-1: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�Ԃ���x���E����" : wait 30 : gosub *read
				if (map=75)&(cx>=440)&(cx<=570)&(down=1)&(gkz=1)&(drag2.3=0) : drag2.3=1 : mapitem=0 : potion=-2: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w����x���E����" : wait 30 : gosub *read
				if (map=87)&(cx>=510)&(down=1)&(gkz=1)&(drag2.4=0) : drag2.4=1 : mapitem=0 : potion=-2 : gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w����x���E����" : wait 30 : gosub *read
				if (map=109)&(cx<=150)&(down=1)&(gkz=1)&(drag2.5=0) : drag2.5=1 : mapitem=0 : potion=-2 : gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w����x���E����" : wait 30 : gosub *read
				if (map=106)&(cx<=190)&(down=1)&(gkz=1)&(drag2.6=0) : drag2.6=1 : mapitem=0 : potion=-2 : gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w����x���E����" : wait 30 : gosub *read
				if (map=110)&(cx<=140)&(down=1)&(gkz=1)&(drag3.0=0) : drag3.0=1 : mapitem=0 : potion=-3 : gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�w�G���N�V���x���E����" : wait 30 : gosub *read
				
				if (BOSSD=1)&(itemx<=cx+163)&(itemx>=cx+33)&(down=1)&(gkz=1)&(mapitem=1) : mapitem=0 : havekindan+ : potion=-4: gosub *getdrag : pos 0,0 : color 255,255,255 :  mes "�֒f�̉ʎ����E����" : wait 30 : gosub *read
				if (BOSSD=1)&(agrax+20<=cx+163)&(agrax+20>=cx+33)&(down=1)&(gkz=1)&(agrara=1) : agrara=0 : haveagra=1 : itemnam=100: gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�A�O���I�t�H�e�B�X���E����" : wait 30 : gosub *read
				if (BOSSH=1)&(orbx+40<=cx+163)&(orbx+40>=cx+33)&(down=1)&(gkz=1)&(orb=1) : orb=0 : haveorb=1 : itemnam=18: gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�I�[�u���E����" : wait 30 : gosub *read
				
						;--------------------------------�A�C�e���g�p�n
				
				if (item_used=-1)&(life<100) : item_dec=1 : recover=30 : life+=30 : stmn=1000 : gosub *useitem
				if (item_used=-2)&(life<100) : item_dec=1 : recover=30 : life+=60 : stmn=1000 : gosub *useitem
				if (item_used=-3)&(life<100) : item_dec=1 : recover=30 : life+=100 : stmn=1000 : gold=2000 : gosub *useitem
				if (item_used=-4)&(BOSSD=1)&(life<100) : havekindan- : item_dec=1 : recover=30 : life+=30 : stmn=1000 : gosub *useitem
				if (BOSSD=1)&(item_used=100) : throw=1 : Ithrow=1
				if (item_used=101)&(now_equip=0) :  equipA=1 : gosub *useitems : now_equip=using : item_used=0
				if (item_used=101)&(now_equip>0) :  equipA=0 : now_equip=0 : item_used=0
				if (item_used=102)&(now_equip=0) :  equipB=1 : gosub *useitems : now_equip=using : item_used=0
				if (item_used=102)&(equipB=1) :  equipB=0 : now_equip=0 : item_used=0
				if (item_used=102)&(equipC=1) :  equipB=1 : equipC=0 : gosub *useitems : now_equip=using : item_used=0
				if (item_used=103)&(now_equip=0) :  equipC=1 : gosub *useitems : now_equip=using : item_used=0
				if (item_used=103)&(equipC=1) :  equipC=0 : now_equip=0 : item_used=0
				if (item_used=103)&(equipB=1) :  equipB=0 : equipC=1 : gosub *useitems : now_equip=using : item_used=0


				if (map=2)&(cx>=270)&(cx<=292)&(sclp<=80)&(item_used=1) : ev2=1 : item_del=1 : pos 0,0 : color 255,255,255 :  mes "�J�M���J����" : wait 30 : gosub *read : gosub *useitem
				if (map=6)&(cx<=65)&(dir=0)&(item_used=2)&(down=0) {
					if press=0 {
						ev3=1 : item_del=1 : pos 0,0 : color 255,255,255 :  mes "�������͂߂���"  : wait 30 : gosub *read : gosub *useitem : redraw 0
						buffer 5 : picload "room4b.bmp" : gsel 0
						redraw 0
						pos 0,0 : gcopy 5,0,0,800,600
						pos cx,cy : gcopy 2,0,256,185,256 : gmode 2 
						redraw 1
					}
					else {
						pos 0,0 : color 255,255,255 :  mes "�����������Ă��Ӗ����Ȃ�" : wait 50
					}
				}
				if (map=20)&(cx<120)&(dir=0)&(item_used=4)&(down=0) {
					item_del=1 : pos 0,0 : color 255,255,255 : mes "�O�p�`�̐΂��͂߂���" : wait 30 : gosub *read : gosub *useitem : redraw 0
					buffer 5 : picload "room13c.bmp" : gsel 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					redraw 1
					wait 100
					pos 0,0 : color 255,255,255 : mes "�͂߂��񂾐΂��������Ă���E�E�E" : wait 200 : redraw 0
					buffer 5 : picload "room13b.bmp" : gsel 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1
					itemE=1 : mapitem=0 : itemnam=5: gosub *getitem : pos 0,0 : color 255,255,255 :  mes "�w����̘Z䊐��x����ɓ��ꂽ" : wait 30 : gosub *read
				}
				if (map=16)&(cx<115)&(dir=0)&(item_used=5)&(down=0)&(itemC=1) {
					item_del=1 : pos 0,0 : color 255,255,255 : mes "����̘Z䊐����͂߂���" : wait 30 : gosub *read : gosub *useitem : buffer 5 : picload "room12c.bmp" : gsel 0 : redraw 0
					buffer 10 : picload "WRATH.bmp" : gsel 0 : buffer 13 : picload "WRATH2.bmp" : buffer 15 : picload "uekezuri.bmp" : buffer 17 : picload "shoumetu.bmp" : buffer 21 : picload "room12d.bmp" : gsel 0
					wait 30 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pos cx+90,6 : gmode 2 : gcopy 10,1750,0,250,450 
					pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 10 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
					pos cx+90,6 : gmode 2 : gcopy 10,0,0,250,450 
					pos 600,10 : gmode 0 : gcopy 11,0,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 200 : redraw 0 
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos cx+90,6 : gmode 2 : gcopy 10,250,0,250,450
					pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 50 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
					pos cx+90,6 : gmode 2 : gcopy 10,250,0,250,450 
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 30 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos cx+90,6 : gmode 2 : gcopy 10,750,0,250,450
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 100 : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����������I�H"
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos cx+90,6 : gmode 2 : gcopy 10,1750,0,250,450 
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 10 : redraw 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,185,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 100 : redraw 0 
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E���I�H\n���x�͉��Ȃ́I�H": redraw 1 : wait 30 : gosub *read
					ev6=1 : BOSSB=1 : satTime=4100 : bossmode=1 : canmovR=590 : ready=100 : tosenbo=1 : faceoff=1
					ikeep=-1 : gosub *saveitem : stockr=stock : stock=0 : ikeep=-2 : gosub *saveitem : stockb=stock : stock=0 : ikeep=0
				}
				if (map=17)&(cx<=370)&(cx>310)&(item_used=3)&(down=0) {
						item_del=1 : pos 0,0 : color 255,255,255 :  mes "�����̘Z䊐����͂߂���"  : wait 30 : gosub *read : gosub *useitem : redraw 0
						buffer 5 : picload "room14b.bmp" : gsel 0
						redraw 0 
						pos 0,0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2
						if dir=0 : gcopy 2,0,256,185,256 : else : gcopy 3,0,256,185,256
						pos 0,0 : color 255,255,255 :  mes "���̌����������ꂽ�悤��" : redraw 1 : wait 30 : gosub *read
						ev9=1
				}
				if (map=29)&(cx<=25)&(item_used=6) : ev12=1 : item_del=1 : pos 0,0 : color 255,255,255 :  mes "�J�M���J����" : wait 30 : gosub *read : gosub *useitem
				if (map=24)&(cx<150)&(item_used=7) : ev13=1 : item_del=1 : pos 0,0 : color 255,255,255 : mes "�J�M���O����" : wait 30 : gosub *read : gosub *useitem
				if (map=24)&(cx<150)&(down=1)&(gkz=1)&(ItemG=1)&(ev13=0) : ev13=1 : item_used=7 : item_del=1 : pos 0,0 : color 255,255,255 : mes "�J�M���O����" : wait 30 : gosub *read : gosub *useitems : gosub *useitem : buffer 5 : picload "room16b.bmp"
				if (map=47)&(cx<100)&(item_used=8) : ev17=1 : item_del=1 : pos 0,0 : color 255,255,255 : mes "�o���u�̃n���h�����͂߂���" : wait 30 : gosub *read : wait 30 : gosub *useitem : buffer 5 : picload "room25b.bmp" 
				if (map=21)&(cx<=350)&(cx>=280)&(item_used=9) {
				item_del=1 : pos 0,0 : color 255,255,255 :  mes "�O�������͂߂���" : wait 30 : gosub *read : gosub *useitem : redraw 0
				buffer 5 : picload "room15b.bmp" : gsel 0
				redraw 0 
				pos 0,0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2
				if dir=0 : gcopy 2,0,256,185,256 : else : gcopy 3,0,256,185,256
				pos 0,0 : color 255,255,255 :  mes "���̌����������ꂽ�悤��" : redraw 1 : wait 30 : gosub *read
				ev24=1
				}
				if (map=64)&(cx<=90)&(item_used=10) : ev28=1 : item_del=1 : pos 0,0 : color 255,255,255 : mes "�J�M���O����" : wait 30 : gosub *read : gosub *useitem
				if (map=50)&(sclp>=20)&(sclp<=110)&(item_used=12) : ev26=1 : item_del=1 : pos 0,0 : color 255,255,255 : mes "�J�M���O����" : wait 30 : gosub *read : gosub *useitem
				if (map=72)&(sclp>620)&(sclp<740)&(item_used=13) : ev37=1 : item_del=1 : pos 0,0 : color 255,255,255 : mes "�J�M���J����" : wait 30 : gosub *read : gosub *useitem
				if (map=117)&(sclp<=270)&(sclp>=170)&(item_used=17) {
				item_del=1 : pos 0,0 : color 255,255,255 :  mes "�����̃����[�t���͂߂���" : wait 30 : gosub *read : gosub *useitem : redraw 0
				buffer 5 : picload "room62a.bmp" : gsel 0
				redraw 0 
				pos mappos,0 : gcopy 5,0,0,800,600 : pos cx,cy : gmode 2
				if dir=0 : gcopy 2,0,256,185,256 : else : gcopy 3,0,256,185,256
				pos 0,0 : color 255,255,255 :  mes "���̌����������ꂽ�悤��" : redraw 1 : wait 30 : gosub *read
				ev49=1
				}
				if (BOSSH=1)&(item_used=16)&(mana=0) : mesA=80 : gosub *useitem
				if (BOSSH=1)&(item_used=16)&(mana=1) : burst=1 : burstp=150 :  gosub *useitem : mana=0
				if (BOSSH=1)&(gkc2=1)&(mana=1) : burst=1 : burstp=150 : mana=0 : gkc2=0
				if (BOSSH=1)&(item_used=18)  : mana=1 : orb=0 : haveorb=0 : item_del=1 : mesB=80 : gosub *useitem
				
				item_used=0
				using=0
				
				
				return
*getitem										;�A�C�e�����擾
															;----------------------�A�C�e���̎��
				if itemnam=1 : getx=160 : gety=0;�Âт���A
				if itemnam=2 : getx=240 : gety=0;����B
				if itemnam=3 : getx=320: gety=0;�����̘Z䊐�C
				if itemnam=4 : getx=480: gety=0;�O�p�`�̐�D
				if itemnam=5 : getx=400 : gety=0;����̘Z䊐�E
				if itemnam=6 : getx=560 : gety=0;�S�̌�F
				if itemnam=7 : getx=640 : gety=0;�����Ȍ�G
				if itemnam=8 : getx=720 : gety=0;�o���u�̃n���h��H
				if itemnam=9 : getx=0 : gety=320;�O����II
				if itemnam=10 : getx=80 : gety=320;�K���X�̌�J
				if itemnam=11 : getx=80 : gety=240;�^�J�̒Z��K
				if itemnam=12 : getx=160 : gety=320;�����̂�����L
				if itemnam=13 : getx=240 : gety=320;�K�т�����M
				if itemnam=14 : getx=400 : gety=320;�T���}���_�[N
				if itemnam=15 : getx=560 : gety=320;�E���f�B�[�lO
				if itemnam=16 : getx=320 : gety=320;������P
				if itemnam=17 : getx=720 : gety=320;�����̃����[�tQ
				if itemnam=18 : getx=240 : gety=240;�I�[�uR
				if itemnam=100 : getx=0 : gety=240;�A�O���I�t�H�e�B�X
				if itemnam=101 : getx=160 : gety=240;�^�J�̒Z��(�����^)
				if itemnam=102 : getx=480 : gety=320;�T���}���_�[(�����^)
				if itemnam=103 : getx=640 : gety=320;�E���f�B�[�l(�����^)
															;---------------------------------------------
				if item6>=1 : box7=itemnam : icon7x=getx : icon7y=gety : item7+ : itemnam=0 : return
				if item5>=1 : box6=itemnam : icon6x=getx : icon6y=gety : item6+ : itemnam=0 : return
				if item4>=1 : box5=itemnam : icon5x=getx : icon5y=gety : item5+ : itemnam=0 : return
				if item3>=1 : box4=itemnam : icon4x=getx : icon4y=gety : item4+ : itemnam=0 : return
				if item2>=1 : box3=itemnam : icon3x=getx : icon3y=gety : item3+ : itemnam=0 : return
				if item1>=1 : box2=itemnam : icon2x=getx : icon2y=gety : item2+ : itemnam=0 : return
				box1=itemnam : icon1x=getx : icon1y=gety : item1+ : return
*getdrag				;--------------�ėp�n�A�C�e���̎擾
				if potion=-1 : getx=160 : gety=80;�Ԃ���
				if potion=-2 : getx=240 : gety=80;����
				if potion=-3 : getx=320 : gety=80;�G���N�V��
				if potion=-4 : getx=400 : gety=80;�֒f�̉ʎ�

				if (item6>=1)&(box6=potion) : box6=potion : icon6x=getx : icon6y=gety : item6+ : potion=0 : return
				if (item5>=1)&(box5=potion) : box5=potion : icon5x=getx : icon5y=gety : item5+ : potion=0 : return
				if (item4>=1)&(box4=potion) : box4=potion : icon4x=getx : icon4y=gety : item4+ : potion=0 : return
				if (item3>=1)&(box3=potion) : box3=potion : icon3x=getx : icon3y=gety : item3+ : potion=0 : return
				if (item2>=1)&(box2=potion) : box2=potion : icon2x=getx : icon2y=gety : item2+ : potion=0 : return
				if (item1>=1)&(box1=potion) : box1=potion : icon1x=getx : icon1y=gety : item1+ : potion=0 : return
				if (item6>=1)&(box6!potion) : box7=potion : icon7x=getx : icon7y=gety : item7+ : potion=0 : return
				if (item5>=1)&(box5!potion) : box6=potion : icon6x=getx : icon6y=gety : item6+ : potion=0 : return
				if (item4>=1)&(box4!potion) : box5=potion : icon5x=getx : icon5y=gety : item5+ : potion=0 : return
				if (item3>=1)&(box3!potion) : box4=potion : icon4x=getx : icon4y=gety : item4+ : potion=0 : return
				if (item2>=1)&(box2!potion) : box3=potion : icon3x=getx : icon3y=gety : item3+ : potion=0 : return
				if (item1>=1)&(box1!potion) : box2=potion : icon2x=getx : icon2y=gety : item2+ : potion=0 : return
				box1=potion : icon1x=getx : icon1y=gety : item1+ : return
*useitem				
				if item_del=1 {
					if using=1 : item1=0
					if using=2 : item2=0
					if using=3 : item3=0
					if using=4 : item4=0
					if using=5 : item5=0
					if using=6 : item6=0
					if using=7 : item7=0
					item_del=0
				}
				if item_dec=1 {
					if (using=1)&(item1>0) : item1-
					if (using=2)&(item2>0) : item2-
					if (using=3)&(item3>0) : item3-
					if (using=4)&(item4>0) : item4-
					if (using=5)&(item5>0) : item5-
					if (using=6)&(item6>0) : item6-
					if (using=7)&(item7>0) : item7-
					item_dec=0
				}
				;�A�C�e���̐���
				repeat 7
				if (item1=0)&(item2>0) : box1=box2 : box2=0 : item1=item2 : item2=0 : icon1x=icon2x : icon1y=icon2y : icon2x=0 : icon2y=0
				if (item2=0)&(item3>0) : box2=box3 : box3=0 : item2=item3 : item3=0 : icon2x=icon3x : icon2y=icon3y : icon3x=0 : icon3y=0
				if (item3=0)&(item4>0) : box3=box4 : box4=0 : item3=item4 : item4=0 : icon3x=icon4x : icon3y=icon4y : icon4x=0 : icon4y=0
				if (item4=0)&(item5>0) : box4=box5 : box5=0 : item4=item5 : item5=0 : icon4x=icon5x : icon4y=icon5y : icon5x=0 : icon5y=0
				if (item5=0)&(item6>0) : box5=box6 : box6=0 : item5=item6 : item6=0 : icon5x=icon6x : icon5y=icon6y : icon6x=0 : icon6y=0
				if (item6=0)&(item7>0) : box6=box7 : box7=0 : item6=item7 : item7=0 : icon6x=icon7x : icon6y=icon7y : icon7x=0 : icon7y=0
				loop

				;�d�l����A�C�e���̔���
				if (redbox=140)&(item1>=1) : item_used=box1 : using=1
				if (redbox=230)&(item2>=1) : item_used=box2 : using=2
				if (redbox=320)&(item3>=1) : item_used=box3 : using=3
				if (redbox=410)&(item4>=1) : item_used=box4 : using=4
				if (redbox=500)&(item5>=1) : item_used=box5 : using=5
				if (redbox=590)&(item6>=1) : item_used=box6 : using=6
				if (redbox=680)&(item7>=1) : item_used=box7 : using=7
				return
*useitems       ;����ȃP�[�X�ł̃A�C�e������
				if item_used=box1 : using=1
				if item_used=box2 : using=2
				if item_used=box3 : using=3
				if item_used=box4 : using=4
				if item_used=box5 : using=5
				if item_used=box6 : using=6
				if item_used=box7 : using=7
				return
*saveitem      ;����ȃP�[�X�ł̃A�C�e���ێ�
				if ikeep=box1 : stock=item1
				if ikeep=box2 : stock=item2
				if ikeep=box3 : stock=item3
				if ikeep=box4 : stock=item4
				if ikeep=box5 : stock=item5
				if ikeep=box6 : stock=item6
				if ikeep=box7 : stock=item7
				return
*mapmov			;�}�b�v�Ԉړ��̏���
				color 0,0,0 : boxf 
				redraw 0
				;--------------------���V�t�F���ݒu
				rusi_on=0
				if rusi_on=0 {
					if (stage=3)&(rusiact=1)&(caution=0)&(alert=0) {
						if (rusiT>=0)&(rusiT<1000)&(map=27)&(cx>=290)&(cx<=292) : rusimode=0 : rusix=1200 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=1000)&(rusiT<1500)&(map=27)&(cx>=290)&(cx<=292) : rusimode=3 : rusix=1000 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=1500)&(rusiT<2500)&(map=24)&(cx<500) : rusimode=2 : rusix=200 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=1500)&(rusiT<2500)&(map=28)&(cx>600) : rusimode=3 : rusix=1200 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=1500)&(rusiT<2500)&(map=34)&(cx<200) : rusimode=3 : rusix=100 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=2500)&(rusiT<4000)&(map=28)&(cx<400): rusimode=1 : rusix=-50 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=4000)&(rusiT<4500)&(map=29)&(cx<400) : rusimode=0 : rusix=80 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=4500)&(rusiT<5000)&(map=29)&(cx<400) : rusimode=2 : rusix=60 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=5000)&(rusiT<6000)&(map=33) : rusimode=2 : rusix=600 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=6000)&(rusiT<7500)&(map=24)&(cx>200)&(cx<400) : rusimode=2 : rusix=-400 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=6000)&(rusiT<7500)&(map=28)&(cx>600): rusimode=2 : rusix=400 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=7500)&(rusiT<10000)&(map=24)&(cx>600) : rusimode=1 : rusix=700 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=3000)&(rusiT<7000)&(map=39)&(cx>600) : rusimode=3 : rusix=700 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=7000)&(rusiT<8500)&(map=39)&(cx>=270)&(cx<=330) : rusimode=0 : rusix=200 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=7000)&(rusiT<8500)&(map=43)&(cx>600) : rusimode=0 : rusix=600 : rusidir=0 : rusi_on=1 : figure=0
					}
					if (stage=3)&(alert=1) {
						if cx<rusix : chase=0 : else : chase=1
						if (map=23)&(cx<200)&(chase=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=23)&(cx>200)&(cx<400) : rusix=-10000 : figure=0
						if (map=23)&(cx>600)&(chase=1) : rusix=-10000 : figure=0
						if (map=21)&(cx<200)&(chase=1) : rusix=500 : rusi_on=1 : figure=0
						if (map=23)&(cx<200)&(chase=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=24)&(cx>200)&(cx<400)&(chase=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=24)&(cx>200)&(cx<400)&(chase=1) : rusix=500 : rusi_on=1 : figure=0
						if (map=24)&(cx>600)&(chase=1) : rusix=-400 : rusi_on=1 : figure=0
						if (map=24)&(cx>600)&(chase=0) : rusix=100 : rusi_on=1 : figure=0
						if (map=27)&(cx>600)&(chase=1) : rusix=-10000 : figure=0 : chase2=0
						if (map=27)&(cx>600)&(chase=0) : rusix=400 : rusi_on=1  : figure=0 : chase2=0
						if (map=27)&(cx<200)&(chase=0) : rusix=1200 : rusi_on=1 : figure=0 : chase2=0
						if (map=27)&(cx<200)&(chase=1) : rusix=500 : rusi_on=1 : figure=0 : chase2=0
						if (map=27)&(cx>=290)&(cx<=292) : rusix=-700 : rusi_on=1 : figure=0 : chase2=0
						if (map=27)&(cx>=290)&(cx<=292)&(chase2=1) : rusix=100 : rusi_on=1 : figure=0 : chase2=0
						if (map=34)&(cx<200)&(chase=0) : rusix=300 : figure=0 : chase2=1
						if (map=34)&(cx>300) : rusix=10000 : figure=0 : chase2=0
						if (map=35)&(cx>600)&(chase=0) : rusix=400 : rusi_on=1 : figure=0
						if (map=35)&(cx>600)&(chase=1) : alert=0
						if (map=35)&(cx<200)&(chase=1) : rusix=400 : rusi_on=1 : figure=0
						if (map=35)&(cx<200)&(chase=0) : alert=0
						if (map=34)&(cx<200)&(chase=1) : rusix=200 : rusi_on=1  : figure=0 : chase2=0
						if (map=28)&(cx>600)&(chase=1) : rusix=-400 : rusi_on=1 : figure=0
						if (map=28)&(cx>600)&(chase=0): rusix=100 : rusi_on=1 : figure=0
						if (map=28)&(cx<400)&(chase=0) : rusix=1600 : rusi_on=1 : figure=0
						if (map=28)&(cx<400)&(chase=1) : rusix=500 : rusi_on=1 : figure=0
						if (map=29)&(cx>600)&(chase=0) : rusix=500 : rusi_on=1 : figure=0 : chase2=0
						if (map=29)&(cx>600)&(chase=1) : rusix=-10000 : figure=0 : chase2=0
						if (map=29)&(cx<400)&(cx>=289) : rusix=2200 : rusi_on=1 : figure=0 : chase2=0
						if (map=29)&(cx<400)&(cx>=289)&(chase2=1) : rusix=500 : rusi_on=1 : figure=0 : chase2=0
						if (map=29)&(cx<200) : rusix=10000 : figure=0 : chase2=0
						if (map=33)&(chase=0) : rusix=350 : rusi_on=1 : figure=0 : chase2=0
						if (map=33)&(chase=1) : rusix=-10000 : figure=0 : chase2=1
						if map=30 : rusix=100 : rusi_on=1  : figure=0 : chase2=1
						if (map=24)&(cx<200) : alert=0
						if (map=37)&(cx>300) : alert=0
						if (map=37)&(cx<200)&(chase=0) : rusix=1200 : rusi_on=1  : figure=0
						if (map=37)&(cx<200)&(chase=1) : rusix=500 : rusi_on=1  : figure=0
						if (map=39)&(cx>600)&(chase=1) : rusix=-400 : rusi_on=1  : figure=0 : chase2=0
						if (map=39)&(cx>600)&(chase=0) : rusix=100 : rusi_on=1  : figure=0 : chase2=0
						if (map=39)&(cx>600)&(chase=1) : rusix=-400 : rusi_on=1  : figure=0 : chase2=0
						if (map=39)&(cx>=270)&(cx<=330) : rusix=1200 : rusi_on=1  : figure=0 : chase2=0
						if (map=39)&(cx>=270)&(cx<=330)&(chase2=1) : rusix=500 : rusi_on=1  : figure=0 : chase2=0
						if (map=42)&(cx>600)&(chase=0) : rusix=350 : rusi_on=1 : figure=0 : chase2=1
						if (map=42)&(cx>600)&(chase=1) : rusix=-1000 : figure=0 : chase2=1
						if (map=42)&(cx<200) : alert=0 : chase2=0
						if (map=39)&(cx<200) : alert=0 : chase2=0
						if (map=30)&(cx<200) : alert=0 : chase2=0
						if (map=37)&(cx>=289)&(cx<=292) : rusix=900 : rusi_on=1  : figure=0 : chase2=0
						if (map=39)&(cx>600) : alert=0 : rusix=290 : rusi_on=1  : figure=0 : chase2=0
						}
						if (stage=6)&(caution=0)&(alert=0)&(ev44=0){
						if (ev43=0)&(map=99)&(cx>=400) : rusimode=0 : rusix=550 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=0)&(rusiT<7000)&(map=108)&(cx>=500) : rusimode=1 : rusix=600 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=0)&(rusiT<7000)&(map=118)&(cx>=100) : rusimode=1 : rusix=-10 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=0)&(rusiT<1000)&(map=106)&(cx>=500) : rusimode=1 : rusix=300 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=0)&(rusiT<1000)&(map=104)&(cx<=100) : rusimode=1 : rusix=400 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=1000)&(rusiT<1500)&(map=105)&(cx>=500) : rusimode=2 : rusix=600 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=1000)&(rusiT<1500)&(map=103)&(cx<=100) : rusimode=2 : rusix=-300 : rusidir=1 : rusi_on=1 : figure=0
						if(rusiT>=1500)&(rusiT<2500)&(map=104)&(cx>=500) : rusimode=2 : rusix=600 : rusidir=1 : rusi_on=1 : figure=0
						if(rusiT>=1500)&(rusiT<2500)&(map=102)&(cx<=100) : rusimode=2 : rusix=-300 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=2500)&(rusiT<3500)&(map=103)&(cx>=500) : rusimode=2 : rusix=600 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=2500)&(rusiT<3500)&(map=101)&(cx<=100) : rusimode=2 : rusix=-600 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=3500)&(rusiT<4500)&(map=103)&(cx>=500) : rusimode=3 : rusix=800 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=3500)&(rusiT<4500)&(map=101)&(cx<=100) : rusimode=3 : rusix=400 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=4500)&(rusiT<5500)&(map=104)&(cx>=500) : rusimode=3 : rusix=1000 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=4500)&(rusiT<5500)&(map=102)&(cx<=100) : rusimode=3 : rusix=400 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=5500)&(rusiT<6500)&(map=105)&(cx>=500) : rusimode=3 : rusix=1000 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=5500)&(rusiT<6500)&(map=103)&(cx<=100) : rusimode=3 : rusix=400 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=6500)&(rusiT<7000)&(map=106)&(cx>=500) : rusimode=1 : rusix=300 : rusidir=1 : rusi_on=1 : figure=0
						if (rusiT>=6500)&(rusiT<7000)&(map=104)&(cx<=100) : rusimode=1 : rusix=400 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=7000)&(rusiT<8000)&(map=105)&(cx<=100) : rusimode=1 : rusix=-100 : rusidir=0 : rusi_on=1 : figure=0
						if (rusiT>=7000)&(rusiT<8000)&(map=120)&(cx<=100) : rusimode=2 : rusix=700 : rusidir=1 : rusi_on=1 : figure=0
						
						if (ev43=1)&(rusiT>=6000)&(rusiT<8000)&(map=115)&(cx>=500) : rusimode=1 : rusix=400 : rusidir=1 : rusi_on=1 : figure=0
						if (ev43=1)&(rusiT>=6000)&(rusiT<8000)&(map=103)&(cx<=500)&(cx>=100) : rusimode=1 : rusix=300 : rusidir=0 : rusi_on=1 : figure=0
						if (ev43=1)&(rusiT>=0)&(rusiT<800)&(map=114)&(cx>=500) : rusimode=1 : rusix=400 : rusidir=1 : rusi_on=1 : figure=0
						if (ev43=1)&(rusiT>=800)&(rusiT<1600)&(map=113)&(cx>=500) : rusimode=1 : rusix=400 : rusidir=1 : rusi_on=1 : figure=0
						if (ev43=1)&(rusiT>=1600)&(rusiT<2400)&(map=112)&(cx>=500) : rusimode=1 : rusix=400 : rusidir=1 : rusi_on=1 : figure=0
						if (ev43=1)&(rusiT>=2400)&(rusiT<3400)&(map=113)&(cx<=500)&(cx>=100) : rusimode=2 : rusix=700 : rusidir=1 : rusi_on=1 : figure=0
						if (ev43=1)&(rusiT>=3400)&(rusiT<4400)&(map=99)&(cx>=500) : rusimode=1 : rusix=400 : rusidir=1 : rusi_on=1 : figure=0
						if (ev43=1)&(rusiT>=3400)&(rusiT<4400)&(map=108)&(cx<=100) : rusimode=1 : rusix=200 : rusidir=0 : rusi_on=1 : figure=0
						if (ev43=1)&(rusiT>=4400)&(rusiT<5400)&(map=98)&(cx<=100) : rusimode=2 : rusix=100 : rusidir=0 : rusi_on=1 : figure=0
					
					}
					if (stage=6)&(alert=1) {
						if cx<rusix : chase=0 : else : chase=1
						if (map=99)&(cx<500)&(chase=0)&(chase2=0) : rusix=10000 : figure=0
						if (map=113)&(cx>=100)&(cx<=500)&(chase=0)&(chase2=0) : rusix=600 : rusi_on=1 : figure=0
						if (map=98)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=99)&(cx>500)&(chase=0)&(chase2=0) : rusix=200 : rusi_on=1 : figure=0
						if (map=99)&(cx>500)&(chase=1)&(chase2=0) : rusix=-400 : rusi_on=1 : figure=0
						if (map=98)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=98)&(cx>500)&(chase=1)&(chase2=0) : rusix=-400 : rusi_on=1 : figure=0
						if (map=108)&(cx>500)&(chase=1)&(chase2=0) : rusix=-400 : rusi_on=1 : figure=0
						if (map=108)&(cx>500)&(chase=0)&(chase2=0) : rusix=200 : rusi_on=1 : figure=0
						if (map=107)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=107)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=108)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=108)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=108)&(cx>=100)&(cx<=500)&(chase2=0) : figure=0
						if (map=100)&(cx>=100)&(cx<=500)&(chase2=0) : figure=0
						if (map=119)&(chase2=0) : rusix=290 : rusi_on=1 : figure=0
						if (map=123)&(chase2=0) : rusix=230 : rusi_on=1 : figure=0
						if (map=108)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=107)&(cx>100)&(chase=1)&(chase2=0) : rusix=-10000 : rusi_on=1 : figure=0
						if (map=118)&(cx>100)&(chase=1)&(chase2=0) : rusix=0 : rusi_on=1 : figure=0
						if (map=106)&(cx>500)&(chase=1)&(chase2=0) : rusix=-400 : rusi_on=1 : figure=0
						if (map=106)&(cx>500)&(chase=0)&(chase2=0) : rusix=200 : rusi_on=1 : figure=0
						if (map=105)&(cx>500)&(chase=1)&(chase2=0) : rusix=-400 : rusi_on=1 : figure=0
						if (map=105)&(cx>500)&(chase=0)&(chase2=0) : rusix=200 : rusi_on=1 : figure=0
						if (map=104)&(cx>500)&(chase=1)&(chase2=0) : rusix=-400 : rusi_on=1 : figure=0
						if (map=104)&(cx>500)&(chase=0)&(chase2=0) : rusix=200 : rusi_on=1 : figure=0
						if (map=103)&(cx>500)&(chase=1)&(chase2=0) : rusix=-700 : rusi_on=1 : figure=0
						if (map=102)&(cx>500)&(chase=1)&(chase2=0) : rusix=-400 : rusi_on=1 : figure=0
						if (map=102)&(cx>500)&(chase=0)&(chase2=0) : rusix=200 : rusi_on=1 : figure=0
						if (map=101)&(cx>500)&(chase=1)&(chase2=0) : rusix=-400 : rusi_on=1 : figure=0
						if (map=101)&(cx>500)&(chase=0)&(chase2=0) : rusix=200 : rusi_on=1 : figure=0
						if (map=100)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=100)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=101)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=101)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=102)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=102)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=103)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=103)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=104)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=104)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=105)&(cx<100)&(chase=0)&(chase2=0) : rusix=1200 : rusi_on=1 : figure=0
						if (map=105)&(cx<100)&(chase=1)&(chase2=0) : rusix=500 : rusi_on=1 : figure=0
						if (map=106)&(cx<500)&(chase=0)&(chase2=0) : rusix=-300 : rusi_on=1 : figure=0
						if (map=120)&(cx<100)&(chase=0)&(chase2=0) : rusix=290 : rusi_on=1 : figure=0
						if (map=117)&(cx<220)&(chase2=0) : rusix=600 : rusi_on=1 : figure=0
						if (map=116)&(cx>100)&(chase2=0) : rusix=0 : rusi_on=1 : figure=0
						if (map=103)&(cx>=100)&(cx<=500)&(chase2=1) : rusix=100 : rusi_on=1 : figure=0
						if (map=99)&(cx<500)&(chase2=1) : rusix=600 : rusi_on=1 : figure=0
						if (map=116)&(cx<100)&(chase=0)&(chase2=1) : rusix=1100 : rusi_on=1 : figure=0
						if (map=116)&(cx<100)&(chase=1)&(chase2=1) : rusix=500 : rusi_on=1 : figure=0
						if (map=115)&(cx<100)&(chase=0)&(chase2=1) : rusix=1100 : rusi_on=1 : figure=0
						if (map=115)&(cx<100)&(chase=1)&(chase2=1) : rusix=500 : rusi_on=1 : figure=0
						if (map=115)&(cx<100)&(chase2=1) : rusix=1100 : rusi_on=1 : figure=0
						if (map=115)&(cx>=100)&(cx<=500)&(chase2=1) : rusix=1100 : rusi_on=1 : figure=0
						if (map=114)&(cx<100)&(chase=0)&(chase2=1) : rusix=1100 : rusi_on=1 : figure=0
						if (map=114)&(cx<100)&(chase=1)&(chase2=1) : rusix=500 : rusi_on=1 : figure=0
						if (map=113)&(cx<100)&(chase=0)&(chase2=1) : rusix=1100 : rusi_on=1 : figure=0
						if (map=113)&(cx<100)&(chase=1)&(chase2=1) : rusix=500 : rusi_on=1 : figure=0
						if (map=112)&(cx<500)&(chase2=1) : rusix=1100 : rusi_on=1 : figure=0
						if (map=112)&(cx>500)&(chase=1)&(chase2=1) : rusix=-300 : rusi_on=1 : figure=0
						if (map=112)&(cx>500)&(chase=0)&(chase2=1) : rusix=200 : rusi_on=1 : figure=0
						if (map=113)&(cx>500)&(chase=1)&(chase2=1) : rusix=-300 : rusi_on=1 : figure=0
						if (map=113)&(cx>500)&(chase=0)&(chase2=1) : rusix=200 : rusi_on=1 : figure=0
						if (map=114)&(cx>500)&(chase=1)&(chase2=1) : rusix=-300 : rusi_on=1 : figure=0
						if (map=114)&(cx>500)&(chase=0)&(chase2=1) : rusix=200 : rusi_on=1 : figure=0
						if (map=115)&(cx>500)&(chase=1)&(chase2=1) : rusix=-300 : rusi_on=1 : figure=0
						if (map=115)&(cx>500)&(chase=0)&(chase2=1) : rusix=200 : rusi_on=1 : figure=0
						if (map=109)&(cx>500)&(chase2=1) : rusix=290 : rusi_on=1 : figure=0
						if (map=110)&(cx>500)&(chase2=1) : rusix=290 : rusi_on=1 : figure=0
						}
						alertoff=0
						rusimiss=0
						rusipat=0
				}
				if off41=1 : off41=0 : ev41=0
				if off42=1 : off42=0 : ev42=0
				if rusidown=1 : rusidown=0
				repeat enam
				en.cnt=0
				loop
				if figure>0 {
					repeat figure
					en.cnt=1;�G�̐�������
					estun.cnt=rnd(50)
					loop
				}
				else {
					repeat enam
					en.cnt=0
					loop
				}
				if settrap=0{
					repeat enam
					trap.cnt=0
					loop
				}
				repeat enam*4
				ito.cnt=0
				kumoito.cnt=0
				loop
				repeat enam
				kaza.cnt=0
				ehit.cnt=0
				trapdam.cnt=0
				hittrap.cnt=0
				loop
				down=0
				if semaimiti=1 : cantstand=1 : down=1
				stmn=1000
				cx=point
				stun=0 : posses=0 : hitmog=0
				if semaimiti=0 : cantstand=0
				a=0 : pos mappos,0 : gcopy 5,0,0,mapsizeX,mapsizeY : gmode 2	
				if dir=0 : gra=2 : else : gra=3
				pos cx,cy : gcopy gra,0,256,185,256 : gmode 2
				;-----------------�x���[�o�u�p
				if BOSSF=1{
					repeat 5
					sizuku_on.cnt=0
					sizuku.cnt=0
					sizukup.cnt=-100+rnd(150)
					sizukuy.cnt=0.0
					sizukufall.cnt=0.0
					loop
					repeat enam
					floa.cnt=0
					slaim.cnt=0
					loop
					repeat floanum
					floa.cnt=1
					loop
					repeat slaimnum
					slaim.cnt=1
					loop
					floanum=0
					slaimnum=0
				}
				
				wait 30
				return

*read
				repeat
				getkey gkz,90
				if gkz=1 : gkz=0 : break
				await 10 
				loop
				return
*pose
				redraw 0
				pos 0,0 : gmode 3,,,230 : gcopy 30,0,0,800,600
				redraw 1 : redraw 0
				repeat
				getkey gkp,80
				if gkp=0 : break
				await 1
				loop
				repeat
				getkey gkp,80
				if gkp=1 : gkp=0 : poseoff=1 : break
				await 1
				loop
				return
*event_dead
				if dead=1 {						;�Y�Ŏ��S
				animexx=370 : anmx=925 : anmy=256 : anime=0 : restart=0 
					repeat 3000
					redraw 0
					buffer 10 : picload "kuiset.bmp" : gsel 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,mapsizeX,mapsizeY 
					pos cx,cy : gmode 2 : gcopy 10,anmx,anmy,185,256
					if anime>=290 : pos cx,cy : gmode 2 : gcopy 10,anmxx,256,185,256 : anime2+
					if anime=3 : anmx=185 : anmy=0
					if anime=8 : anmx=370
					if anime=13 : anmx=555
					if anime=110 : anmx=740 
					if anime=200 : anmx=925
					if anime=210 : anmx=0 : anmy=256
					if anime=410 : anmx=185
					if anime=411 : anmx=0
					if anime=610 : anmx=185
					if anime=611 : anmx=0
					if anime=615 : anmx=185
					if anime=616 : anmx=0 : anime=289
					if anime2=30 : anmxx=370
					if anime2=60 : anmxx=555
					if anime2>90 : anmxx=740 : anime2=-2
					anime+
					redraw 1
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,mapsizeX,mapsizeY
					pos cx,cy : gmode 2 : gcopy 10,0,256,185,256
					redraw 1
					repeat
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					restart=0 : return
				}
				if dead=2 {
					restart=0 
					buffer 5 : picload "room3b.bmp" : gsel 0
					pos 0,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
					redraw 1
					wait 300
					redraw 0
					color 0,0,0 : boxf 0,0,800,600
					otosiY=580
					pos 240,otosiY: gmode 2 : gcopy 8,740,0,370,256
					redraw 1
					wait 400
					repeat
					redraw 0
					color 0,0,0 : boxf 0,0,800,600
					pos 240,otosiY: gmode 2 : gcopy 8,740,0,370,256
					anime+
					if (anime>2)&(otosiY>351) : otosiY-=1 : anime=0
					redraw 1
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					restart=0 : return
				}
				if dead=3 {
					redraw 0
					pressY=-150 : restart=0 
					pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos 290,cy : gmode 2 : gcopy 8,0,256,185,256
					pos 0,pressY : gmode 2 : gcopy 10,0,0,800,600
					wait 200 : redraw 1
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E\n�Ђ����E�E�E": wait 30
					gosub *read
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E������\n���ɂ����Ȃ�\n���ɂ����Ȃ����E�E�E": wait 30
					gosub *read
					repeat	
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos 290,cy : gmode 2 : gcopy 8,0,256,185,256
					pressY+ : redraw 0 : pos 0,pressY : gmode 2 : gcopy 10,0,0,800,600
					redraw 1 : await 50
					if pressY<-50 : loop
					pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�E�E�E�E�E�₾�E�E�E�E�E\n���ʂ́H\n���E�E�E���񂶂Ⴄ�́I�H": wait 30
					gosub *read
					pos 600,10 : gmode 0 : gcopy 11,900,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E���������E�E�E�Ђ�������������\n���₾������������������������������\n�����������������������������I": wait 30
					gosub *read
					pos 600,10 : gmode 0 : gcopy 11,900,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����āI\n���Ƃ�����I\n��������������������������������I": wait 30
					wait 500
					repeat	
					redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
					pos 290,cy : gmode 2 : gcopy 8,0,256,185,256
					pressY+=5 : redraw 0 : pos 0,pressY : gmode 2 : gcopy 10,0,0,800,600
					redraw 1 : await 1
					if pressY<0 : loop
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",60 : pos 30,20 : color 255,255,255 : mes "��"
					font "�l�r �S�V�b�N",40 : pos 110,40 : color 255,255,255 : mes "��"
					font "�l�r �S�V�b�N",33 : pos 169,50 : color 255,255,255 : mes "��"
					wait 600
					pos 0,pressY : gmode 0 : gcopy 10,0,0,800,600
					repeat
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					restart=0 : return
				}
				if dead=4 {
					deadp=0 : deadfx=0 : deadfy=0 : restart=0 
					repeat
					redraw 0
					pos mappos,0 : gmode 0 : gcopy 5,0,0,2000,600
					pos cx,cy : gmode 2 : gcopy 15,deadfx,deadfy,185,256
					if deadp=5 : deadfx=185
					if deadp=10 : deadfx=370
					if deadp=15 : deadfx=555
					if deadp=20 : deadfx=740
					if deadp=175 : cx+
					if deadp=178 : cx-
					if deadp=215 : cx+
					if deadp=218 : cx-
					if deadp=415 : cx+
					if deadp=418 : cx-
					if deadp=435 : cx+
					if deadp=438 : cx-
					if deadp=455 : cx+
					if deadp=458 : cx-
					if deadp=500 : deadfx=925
					if deadp=510 : deadfx=0 : deadfy=256
					if deadp=520 : deadfx=185
					if deadp=530 : deadfx=370
					if deadp=540 : deadfx=555
					if deadp=740 : deadfx=740
					if deadp=741 : deadfx=555
					if deadp=940 : deadfx=740
					if deadp=941 : deadfx=555
					if deadp=1300 : filterR=50
					if deadp=1320 : filterR=100
					if deadp=1340 : filterR=150
					if deadp=1360 : filterR=200
					if deadp=1380 : filterR=250
					deadp+
					pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600
					gmode 2
					redraw 1
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					restart=0 : return
				}
				if dead=5 {
					deadp=0 : deadfx=0 : deadfy=0 : ehead=-540 : restart=0 
					repeat
					redraw 0
					pos mappos,0 : gmode 0 : gcopy 5,0,0,2000,600
					if deadp<13 : pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : else : pos cx,cy : gmode 2 : gcopy 17,deadfx,deadfy,185,256
					if deadp<13 : pos cx+57,ehead : gmode 2 : gcopy 10,0,0,106,540 : else : pos cx+57,ehead : gmode 2 : gcopy 10,106,0,106,540
					if deadp=3 : ehead+=83
					if deadp=6 : ehead+=83
					if deadp=9 : ehead+=83
					if deadp=12 : ehead+=83
					if deadp=17 : ehead-=150
					if deadp=20 : ehead-=132
					if deadp16 : deadfx=185
					if deadp=26 : deadfx=370
					if deadp=36 : deadfx=555
					if deadp=46 : deadfx=740
					if deadp=350 : deadfx=925
					if deadp=351 : deadfx=740
					if deadp=500 : deadfx=925
					if deadp=501 : deadfx=740
					if deadp=530 : deadfx=925
					if deadp=531 : deadfx=740
					if deadp=800 : deadfx=925
					if deadp=801 : deadfx=740
					if deadp=830 : deadfx=925
					if deadp=831 : deadfx=740
					if deadp=1300 : filterR=50
					if deadp=1320 : filterR=100
					if deadp=1340 : filterR=150
					if deadp=1360 : filterR=200
					if deadp=1380 : filterR=250
					deadp+
					pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600
					gmode 2
					redraw 1
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					restart=0 : return
				}
					if dead=6 {
						redraw 0 : deadp=0 : deadfx=0 : restart=0 
						buffer 13 : picload "hahen.bmp" : gsel 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						redraw 1
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����I�H": wait 30
						gosub *read
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�N�I�H": wait 30
						gosub *read
						wait 300
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����I�H\n����E�E�E�E��߁E�E�E": wait 100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",50 : pos 30,20 : color 255,255,255 : mes "�Ђ����������������I�H": wait 200
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 110,280 : gmode 2 : gcopy 13,deadfx,0,185,200
						pos 0,0 : gmode 2 : gcopy 10,0,0,800,600
						if deadp<50 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						if deadp<50 : font "�l�r �S�V�b�N",50 : pos 30,20 : color 255,255,255 : mes "�Ђ����������������I�H"
						if deadp=8 : deadfx=185
						if deadp=16 : deadfx=370
						if deadp=24 : deadfx=555
						if deadp=32 : deadfx=740
						if deadp=40 : deadfx=925
						if deadp=600 : filterR=50
						if deadp=620 : filterR=100
						if deadp=640 : filterR=150
						if deadp=660 : filterR=200
						if deadp=680 : filterR=250
						pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600
						gmode 2
						deadp+
						redraw 1
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=7 {
						buffer 10 : picload "filterb.bmp" : gsel 0 : restart=0 
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256
						pos 600,10 : gmode 0 : gcopy 11,360,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǂ������񂾂낤�E�E�E�Ȃ񂾂��M����": wait 30
						wait 300
						pos 0,0 : gmode 3,,,50 : gcopy 10,0,0,800,600 : wait 50
						pos 0,0 : gmode 3,,,50 : gcopy 10,0,0,800,600 : wait 50
						pos 0,0 : gmode 3,,,50 : gcopy 10,0,0,800,600 : wait 50
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�����E�E�E�E"
						pos 0,0 : gmode 3,,,150 : gcopy 10,0,0,800,600
						redraw 1 : wait 30
						gosub *read
						redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��������������������������I�I�I�H"
						pos 0,0 : gmode 3,,,150 : gcopy 10,0,0,800,600
						redraw 1 : wait 30
						gosub *read
						redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�M�����I�I�I�M���M���M�������A�c�C\n�A�c�C�A�c�C�A�c�C�A�c�C�A�c�C�A�c�C\n�A�c�C�A�c�C�A�c�C�A�c�C�A�c�C\n�M���您���������������I�I�I": wait 30
						pos 0,0 : gmode 3,,,150 : gcopy 10,0,0,800,600
						redraw 1 : wait 30
						wait 300
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��Ⴀ��������������������"
						pos 0,0 : gmode 3,,,150 : gcopy 10,0,0,800,600
						wait 500
						pos 0,0 : gmode 3,,,50 : gcopy 10,0,0,800,600 : wait 50
						pos 0,0 : gmode 3,,,50 : gcopy 10,0,0,800,600 : wait 50
						pos 0,0 : gmode 3,,,255 : gcopy 10,0,0,800,600 : wait 50
						wait 500 : redfeed=250
						repeat 4
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy+50 : gmode 2 : gcopy 8,740,512,185,256
						pos 0,0 : gmode 3,,,redfeed : gcopy 10,0,0,800,600 : wait 50
						redraw 1
						redfeed-=50
						await 1
						loop
						deadp=0 : deadfx=740 : redfeed=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						if deadp=50 : deadfx=925
						if deadp=100 : deadfx=740 : deadp=-1
						pos cx,cy+50 : gmode 2 : gcopy 8,deadfx,512,185,256
						pos 0,0 : gmode 3,,,100 : gcopy 10,0,0,800,600
						redraw 1
						deadp+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=8 {
						redraw 0 : restart=0 
						if down=0 {
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 8,0,768,185,256 : redraw 1 : wait 5 : redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 8,185,768,185,256 : redraw 1 : wait 5 : redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 8,0,512,185,256 : redraw 1 : wait 500 : redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 8,185,512,185,256 : redraw 1 : wait 100 : redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 8,370,512,185,256 : redraw 1 : wait 100 : redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 8,555,512,185,256 : redraw 1
						}
						if down=1 {
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 8,370,768,185,256 : redraw 1 : wait 5 : redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 8,555,768,185,256 : redraw 1
						}
							
						deadp=0 : filterR=0
						repeat
						redraw 0
						if deadp=700 : filterR=50
						if deadp=740 : filterR=100
						if deadp=780 : filterR=150
						if deadp=820 : filterR=200
						if deadp=860 : filterR=250
						if deadp=900 : filterR=255
						deadp+
						pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600
						redraw 1
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=9 {
						buffer 10 : picload "furubokkoa.bmp" : gsel 0
						buffer 13 : picload "WRATH.bmp" : gsel 0
						deadp=0 : deadfx=0 : deadfy=0 : restart=0  : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos cx+55,6 : gmode 2 : gcopy 13,1750,0,250,450 : redraw 1
						wait 10 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 3,0,256,185,256
						pos cx+55,6 : gmode 2 : gcopy 13,0,0,250,450
						redraw 1 : wait 300 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�I�H" : redraw 1 : wait 30
						gosub *read
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,6 : gmode 2 : gcopy 10,deadfx,deadfy,300,450
						if deadp=61 {
						redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ɂ��I�ɂ���I\n�͂Ȃ��Ă��I" : redraw 1 :  wait 30 : gosub *read
						}
						if deadp=206 {
						redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ق��I�I�I" : redraw 1 : wait 30 : gosub *read
						}
						if deadp=1081 {
						redraw 1 : wait 200 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ���������\n��߂Ă�\n������߂Ă����E�E�E" : redraw 1 : wait 200
						}
						redraw 1
						if deadp=30 : deadfx=300
						if deadp=60 : deadfx=600
						if deadp=120 : deadfx=900
						if deadp=200 : deadfx=1200
						if deadp=205 : deadfx=1500
						if deadp=400 : deadfx=0 : deadfy=450
						if deadp=500 : deadfx=1200 : deadfy=0
						if deadp=505 : deadfx=1500 : deadfy=0
						if deadp=555 : deadfx=0 : deadfy=450
						if deadp=605 : deadfx=1200 : deadfy=0
						if deadp=610 {
							deadfx=1500 : deadfy=0
							if bokko<=3 : deadp=506 : bokko+
							if (bokko>3)&(bokko<=10) : deadp=545 : bokko+
						}
						if deadp=650 : deadfx=0 : deadfy=450 : bokko=0
						if deadp=750 : deadfx=300 : deadfy=450
						if deadp=760 : deadfx=600 : deadfy=450
						if deadp=800 : deadfx=900 : deadfy=450
						if deadp=840 : deadfx=600 : deadfy=450
						if deadp=880 {
							deadfx=900 : deadfy=450
							if bokko<3 : deadp=801 : bokko+
						}
						if deadp=900 : deadfx=1200 : deadfy=450 : bokko=0
						if deadp=920 : deadfx=1500 : deadfy=450
						if deadp=960 : deadfx=0 : deadfy=900
						if deadp=980 : deadfx=300 : deadfy=900
						if deadp=1080 : deadfx=600 : deadfy=900
						if deadp=1280 : deadfx=900 : deadfy=900
						if deadp=1283 : deadfx=1200 : deadfy=900
						if deadp=1400 : break
						deadp+
						await 1
						loop
						deadp=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,6 : gmode 2 : gcopy 10,deadfx,deadfy,300,450
						redraw 1
						if deadp=40 : deadfx=900 : deadfy=900
						if deadp=43 : deadfx=1200 : deadfy=900 : deadp=-1 : bokko+
						if bokko=15 : break
						deadp+
						await 1
						loop
						deadp=0
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,6 : gmode 2 : gcopy 10,1200,900,300,450
						pos 600,10 : gmode 0 : gcopy 11,0,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ˁE�E�E�E�E�E���˂�����Ђ�E�E�E\n�����E�E�E��߂Ă���Ђ�E�E�E" : redraw 1 : wait 30 : gosub *read
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,6 : gmode 2 : gcopy 10,deadfx,deadfy,300,450
						redraw 1
						if deadp=20 : deadfx=900 : deadfy=900
						if deadp=23 : deadfx=1200 : deadfy=900 : deadp=-1 : bokko+
						if bokko=30 : break
						deadp+
						await 1
						gosub *yarinaoshi
						if restart=1 : break
						loop
						if restart= 1 : restart=0 : return
						deadp=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,6 : gmode 2 : gcopy 10,deadfx,deadfy,300,450
						redraw 1
						if deadp=5 : deadfx=900 : deadfy=900
						if deadp=8 : deadfx=1500 : deadfy=900 : deadp=-1
						deadp+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=10 {
						deadp=0 : deadfx=0 : deadfy=0 : filterR=0 : restart=0 
						if dir=0 : deadfy=0 : else : deadfy=256
						if wradir=0 : Bfe2y=900 : else : Bfe2y=1350
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 15,deadfx,deadfy,185,256
						pos wraplax,6 : gmode 2 : gcopy 10,1500,Bfe2y,250,450
						if deadp<=10 {
							if wradir=0 : pos wraplax-750,6 : gmode 2 : gcopy 13,0,1350,1000,450						
							if wradir=1 : pos wraplax,6 : gmode 2 : gcopy 13,0,900,1000,450
						}
						if deadp=25 : deadfx=185
						if deadp=35 : deadfx=370
						if deadp=45 : deadfx=555
						if deadp=55 : deadfx=740
						if deadp=500 : filterR=50
						if deadp=540 : filterR=100
						if deadp=580 : filterR=150
						if deadp=620 : filterR=200
						if deadp=660 : filterR=250
						if deadp=700 : filterR=255
						deadp+
						pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600
						redraw 1
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=11 {
						deadp=0 : deadfx=0 : deadfy=0 : filterR=0 : ray_y=1350 : deadf2x=0 : deadf2y=256 : gkr=0 : restart=0 
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600							
						pos 100,6 : gmode 2 : gcopy 13,500,0,250,450
						if deadp<315 : pos 100,6 : gmode 2 : gcopy 13,1000,ray_y,1000,450
						if deadp<26 : pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						if deadp>=26 : pos cx,cy : gmode 2 : gcopy 17,deadfx,deadfy,185,256
						if deadp>=76 : pos cx+182,cy : gmode 2 : gcopy 17,deadf2x,deadf2y,185,256
						pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600
						redraw 1
						if deadp=15 : ray_y=900
						if deadp=30 : ray_y=450
						if deadp=45 : deadfx=185
						if deadp=60 : deadfx=370 : deadf2x=925
						if deadp=75 : deadfx=555 : deadf2x=740
						if deadp=90 : deadfx=740 : deadf2x=925
						if deadp=105 : deadfx=925 : deadf2x=740
						if deadp=120 : deadfx=0 : deadfy=256 : deadf2x=925
						if deadp=135 : deadfx=185 : deadfy=256 : deadf2x=0 : deadf2y=512
						if deadp=150 : deadfx=370 : deadfy=256 : deadf2x=185 : deadf2y=512
						if deadp=165 : deadfx=555 : deadfy=256 : deadf2x=370 : deadf2y=512
						if deadp=180 : deadfx=925 : deadfy=512 : deadf2x=555 : deadf2y=512
						if deadp=195 : deadfx=925 : deadfy=512 : deadf2x=740 : deadf2y=512
						if deadp=210 : deadf2x=925 : deadf2y=512
						if deadp=300 : ray_y=900
						if deadp=305 : ray_y=1350
						if deadp>400 : gosub *yarinaoshi
						if deadp=700 : filterR=50
						if deadp=720 : filterR=100
						if deadp=740 : filterR=150
						if deadp=860 : filterR=200
						if deadp=880 : filterR=250
						if deadp=900 : filterR=255
						
						if restart=1 : break
						deadp+
						await 1
						loop
						restart=0 : return
					}
					if dead=12 {
						dead=0 : dcou=6 : dim deathp,dcou : dim deathf,dcou : deadp=0 : deadfx=0 : deathp=30,60,90,120,150,180 : deathf=50,100,150,200,250,255
						repeat kemu
						kemuri_on.cnt=0
						loop
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600	
						pos grex,grey : gmode 2 : gcopy 10,0,0,200,200
						pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						pos cx,cy : gmode 2 : gcopy 23,0,512,185,256
						redraw 1 : wait 200
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600	
						pos grex,grey : gmode 2 : gcopy 10,0,0,200,200
						pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						pos cx,cy : gmode 2 : gcopy 23,0,512,185,256
						pos 600,10 : gmode 0 : gcopy 11,180,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�E�E�E�E�E\n���₾�[�[�[�[���I�I�I\n�΂ɂȂ�̂͂���[�[�[�[�[���I�I�I" : redraw 1 : wait 30 : gosub *read
						redraw 1 : wait 200
						repeat 181
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600	
						pos grex,grey : gmode 2 : gcopy 10,0,0,200,200
						pos cx,cy : gmode 2 : gcopy 2,0,512,185,256
						pos cx,cy : gmode 2 : gcopy 23,0,512,185,256
						color 0,0,0
						pos cx,cy : gmode 4,,,deadfx : gcopy 27,555,256,185,256 : color 255,255,255
						redraw 1
							repeat dcou
							if deadp=deathp.cnt : deadfx=deathf.cnt
							loop
						deadp+
						await 1
						loop
						wait 200 : restart=0 : dcou=0 : dim deathfx,6 : dim deathfy,6 : dim deathp,5 : deadp=0 : gkr=0 : deathfx=555,740,925,0,185,370 : deathfy=256,256,256,512,512,512 : deathp=200,400,700,720,740,900
							if life<=20 {
								repeat
								redraw 0
								pos 0,0 : gmode 0 : gcopy 5,0,0,800,600	
								pos grex,grey : gmode 2 : gcopy 10,0,0,200,200
								pos cx,cy : gmode 2 : gcopy 27,deathfx.dcou,deathfy.dcou,185,256
								redraw 1
								if deadp=deathp.dcou : dcou+
								if dcou=6 : dcou=5
								if deadp=900 : break
								deadp+
								await 1
								loop
							}
							else {
								wait 50
							}
							repeat
							gosub *yarinaoshi
							if restart=1 : break
							await 1
							loop
							restart=0 : return
						}
						if dead=13 {
							redraw 0
							pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������݂ĂȂ�����E�E�E�E�E\n�������" : redraw 1 : wait 30 : gosub *read
							wait 100
							dead=0 : dcou=0 : dim deathp,4 : dim deathfx,4 : deadp=0 : deadfx=0
							deathp=40,60,440,460,540,700
							deathfx=0,185,370,555,370,555
							repeat
							redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,deathfx.dcou,0,185,256 : redraw 1
							if deadp=deathp.dcou : dcou+
							if deadp>=560 : break
							deadp+
							await 1
							loop
							deadfx=740
							repeat 100
							redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,deadfx,0,185,256 : redraw 1
							if deadp=30 : deadfx=925
							if deadp>=60 : deadfx=740 : deadp=-1
							deadp+
							await 1
							loop
							repeat 500
							redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,deadfx,0,185,256 : redraw 1
							if deadp=10 : deadfx=925
							if deadp>=20 : deadfx=740 : deadp=-1
							deadp+
							await 1
							loop
							redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,555,0,185,256 
							pos cx,cy : gmode 2 : gcopy 22,925,256,185,256: redraw 1 : wait 20
							redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,0,256,185,256 : redraw 1 : wait 500
							redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,185,256,185,256
							pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ɂ��E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read
							redraw 0 : wait 200
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,370,0,185,256
							pos cx,cy : gmode 2 : gcopy 22,925,256,185,256
							pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������E�E�E�E�H\n���E�E�E�`�N���āE�E�E�E" : redraw 1 : wait 30 : gosub *read : wait 150
							redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,185,256,185,256
							pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�ɂ����I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,370,256,185,256
							pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ɂ��ɂ��ɂ�������\n�C�^�C�[�[�[�[�b�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�q�M�b�E�E�E�C�_�C�[�[�[�[���I\n���������̏��E�E�E���������ė��E�E�E\n�M���A�A�A�A�A�A�A�A�A�A�A�A�A�A�A�A" : redraw 1 : wait 30 : gosub *read : redraw 0
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,555,256,185,256
							pos 600,10 : gmode 0 : gcopy 11,900,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ɂ����������I�I�I�Ђ������E�E�E\n�N������Ă��I�I�I\n�M�C�G�G�G�G�G�G�b�b�b�b" : redraw 1 : wait 30 : gosub *read : redraw 0
							deadfx=555
							repeat
							redraw 0 
							pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
							pos cx,cy : gmode 2 : gcopy 22,deadfx,256,185,256
							redraw 1
							if deadp=50 : deadfx=740
							if deadp>=60 : deadfx=555 : deadp=-1
							deadp+
							gosub *yarinaoshi
							if restart=1 : break
							await 1
							loop
							restart=0 : return
							}
							if dead=14{
								buffer 10 : picload "dougirea.bmp"
								buffer 13 : picload "dougireb.bmp" : gsel 0
								if dash=1{
									deadp=0 : deadfx=740 : deadfy=256 : deadf2x=185 : deadf2y=512 : cx2=cx : cy2=cy
									if dir=0{
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx,cy : gmode 2 : gcopy 10,deadfx,deadfy,185,256
										pos cx2,cy2 : gmode 2 : gcopy 10,deadf2x,deadf2y,185,256
										redraw 1
										if deadp=8 : deadfx=925 : deadf2x=370 : cx2-=90
										if deadp=16 : deadfx=0 : deadfy=512 : deadf2x=555 : cx2-=90 : cy2+=5
										if deadp=300 : break
										deadp+
										await 1
										loop
										deadfx=0
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx,cy : gmode 2 : gcopy 10,0,512,185,256
										pos cx2,cy2 : gmode 2 : gcopy 10,555,512,185,256
										pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
										deadfx+=5
										await 1
										gosub *yarinaoshi
										if restart=1 : break
										await 1
										loop
										restart=0 : return
									}
									else{
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx,cy : gmode 2 : gcopy 13,deadfx,deadfy,185,256
										pos cx2,cy2 : gmode 2 : gcopy 13,deadf2x,deadf2y,185,256
										redraw 1
										if deadp=8 : deadfx=925 : deadf2x=370 : cx2+=90
										if deadp=16 : deadfx=0 : deadfy=512 : deadf2x=555 : cx2+=90 : cy2+=5
										if deadp=300 : break
										deadp+
										await 1
										loop
										deadfx=0
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx,cy : gmode 2 : gcopy 13,0,512,185,256
										pos cx2,cy2 : gmode 2 : gcopy 13,555,512,185,256
										pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
										deadfx+=5
										gosub *yarinaoshi
										if restart=1 : break
										await 1
										loop
										restart=0 : return
									}
								}
								else{
									deadp=0 : dcou=0 : dim deathfx,10: dim deathfy,10 : dim deathp,10
									deathp=20,40,80,85,90,95,100,260,270,1000
									deathfx=0,185,370,555,740,925,0,185,370,555
									deathfy=0,0,0,0,0,0,256,256,256,256
									if dir=0{
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx,cy : gmode 2 : gcopy 10,deathfx.dcou,deathfy.dcou,185,256
										redraw 1
										if deadp=deathp.dcou : dcou+
										if deadp=250 {
											pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
											font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����E�E�E�E�I�H\n�Ђ����������I�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
										}
										if deadp=400 {
											pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
											font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����h���E�E�E�E\n�����������`�`�`�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
											pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
											font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����h�`�`�`�`\n�ɂ��[���I�ɂ��悧�`�`�`�I\n���������E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
										}
										deadp+
										if deadp=470 : break
										await 1
										loop
										deadfx=0
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx,cy : gmode 2 : gcopy 10,555,256,185,256
										pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
										deadfx+=5
										gosub *yarinaoshi
										if restart=1 : break
										await 1
										loop
										restart=0 : return
									}
									else{
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx,cy : gmode 2 : gcopy 13,deathfx.dcou,deathfy.dcou,185,256
										redraw 1
										if deadp=deathp.dcou : dcou+
										if deadp=250 {
											pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
											font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����E�E�E�E�I�H\n�Ђ����������I�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
										}
										if deadp=400 {
											pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
											font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����h���E�E�E�E\n�����������`�`�`�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
											pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
											font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����h�`�`�`�`\n�ɂ��[���I�ɂ��悧�`�`�`�I\n���������E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
										}
										deadp+
										if deadp=470 : break
										await 1
										loop
										deadfx=0
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx,cy : gmode 2 : gcopy 13,555,256,185,256
										pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
										deadfx+=5
										gosub *yarinaoshi
										if restart=1 : break
										await 1
										loop
										restart=0 : return
									}
								}
							}
					if dead=15{
									buffer 10 : picload "dougirea.bmp"
									buffer 13 : picload "dougireb.bmp" : gsel 0
									deadfx=0 : deadf2x=925 : deadp=0
									cx2=cx : cy2=cy
									if dir=0 {
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx2,cy2 : gmode 2 : gcopy 10,deadf2x,768,185,256
										pos cx,cy : gmode 2 : gcopy 10,deadfx,768,185,256
										redraw 1
										if deadp=200 : deadfx=370 : deadf2x=185
										if deadp=220 : deadfx=555 : deadf2x=185 : cx-=10
										if deadp=230 : deadfx=740 : deadf2x=185 : cx-=50 : cy+=5
										if deadp=300 : break
										deadp+
										await 1
										loop
										deadfx=0
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx2,cy2 : gmode 2 : gcopy 10,185,768,185,256
										pos cx,cy : gmode 2 : gcopy 10,740,768,185,256
										pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
										deadfx+=5
										gosub *yarinaoshi
										if restart=1 : break
										await 1
										loop
										restart=0 : return
									}
									else{
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx2,cy2 : gmode 2 : gcopy 13,deadf2x,768,185,256
										pos cx,cy : gmode 2 : gcopy 13,deadfx,768,185,256
										redraw 1
										if deadp=200 : deadfx=370 : deadf2x=185
										if deadp=220 : deadfx=555 : deadf2x=185 : cx+=10
										if deadp=230 : deadfx=740 : deadf2x=185 : cx+=50 : cy+=5
										if deadp=300 : break
										deadp+
										await 1
										loop
										deadfx=0
										repeat
										redraw 0
										pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
										pos cx2,cy2 : gmode 2 : gcopy 13,185,768,185,256
										pos cx,cy : gmode 2 : gcopy 13,740,768,185,256
										pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
										deadfx+=5
										gosub *yarinaoshi
										if restart=1 : break
										await 1
										loop
										restart=0 : return
									}
					}
					if dead=16{
						kumo53y=-180
						if dir=0 : chardir=2 : else : chardir=3
						repeat
						redraw 0
						pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy chardir,0,256,185,256
						pos kumo53A,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53A,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53A,270 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53B,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53B,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53B,270 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53C,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53C,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53C,270 : gmode 2 : gcopy 24,636,0,106,180
						pos cx+40,kumo53y : gmode 2 : gcopy 24,848,0,106,180	: redraw 1	
						if kumo53y>=240 : break
						kumo53y+=30
						await 1
						loop
						wait 10
						repeat
						redraw 0
						pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy chardir,0,256,185,256
						pos kumo53A,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53A,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53A,270 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53B,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53B,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53B,270 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53C,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53C,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53C,270 : gmode 2 : gcopy 24,636,0,106,180
						pos cx+40,kumo53y : gmode 2 : gcopy 24,848,0,106,180 : redraw 1
						if cy<=-300 : break
						kumo53y-=80 : cy-=80
						await 1
						loop
						wait 200
						deadp=0 : deadfx=636 : deadf2x=742 : deadf3x=636 : deadpp=0
						repeat
						redraw 0
						pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
						pos kumo53A,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53A,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53A,270 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53B,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53B,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53B,270 : gmode 2 : gcopy 24,636,0,106,180
						pos kumo53C,0 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53C,180 : gmode 2 : gcopy 24,636,0,106,180 : pos kumo53C,270 : gmode 2 : gcopy 24,636,0,106,180
						pos cx+40,-60 : gmode 2 : gcopy 24,deadfx,180,106,180 : pos cx+40,120 : gmode 2 : gcopy 24,deadf2x,180,106,180
						pos cx+40,300 : gmode 2 : gcopy 24,deadf3x,360,106,180 : redraw 1
						if deadp=10 : deadfx=848 : deadf2x=636
						if deadp=20 : deadfx=742 : deadf2x=848
						if deadp=30 : deadfx=636 : deadf2x=742 
						if deadp=15 : deadf3x=742
						if deadp=30 : deadf3x=636 : deadp=-1
						deadp+
						await 1
						loop
					}
					if dead=17 {
						pos 0,0 : gmode 0 : gcopy 9,0,0,800,600
						buffer 10 : picload "pass19dead.bmp" : gsel 0
						deadp=0 : deadfx=255
						wait 500
						repeat
						redraw 0
						pos -760,0 : gmode 0 : gcopy 5,0,0,2000,600
						pos -760,0 : gmode 2 : gcopy 10,0,0,2000,600
						pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600
						redraw 1
						await 1
						deadfx-=5
						if deadfx<=0 : break
						loop
						repeat
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=18 {
						color 0,0,0 : boxf 0,0,800,600
						buffer 5 : picload "roomkuware.bmp"
						buffer 10 : picload "kuware.bmp"
						buffer 13 : picload "kuware2.bmp" : gsel 0 : redraw 0
						wait 600
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�E�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E�E�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E�E�H\n���E�E�E�����Ă�E�E�E�E�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,185,0,185,256 : redraw 1
						wait 200 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,0,185,256 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ЁE�E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������I�I�I�E�E�E�ȁE�E�E�E���I�H\n���ŁE�E�E�E�E�I�H\n���ł���Ȃ��ƂɂȂ��Ă�́I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256 : redraw 1 : wait 300 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,185,0,185,256 : redraw 1 : wait 300
						pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�_�����E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�_�����E�E�E�E\n�̂��S�R�������Ȃ���E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,185,0,185,256 : redraw 1 : wait 200
						pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ǂ����悤�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����Ȋi�D�E�E�E\n�p���������悧�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,185,0,185,256 : redraw 1 : wait 400 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,0,185,256 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E����I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : deadfx=0 : deadx=900
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,0,185,256
						pos deadx,376 : gmode 2 : gcopy 4,deadfx,93,118,93 : redraw 1
						if deadp=10 : deadfx=118
						if deadp=20 : deadfx=236
						if deadp=30 : deadfx=118
						if deadp=40 : deadfx=0 : deadp=-1
						deadp+
						deadx-
						if deadx=500 : break
						await 1
						loop
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,0,185,256
						pos deadx,376 : gmode 2 : gcopy 4,0,93,118,93 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�E�E�E�E\n���Ȃ��ŁE�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 4,0,93,118,93 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���₠�������������I�I�I\n���Ȃ��ł您���I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,0,185,256
						pos deadx,376 : gmode 2 : gcopy 4,deadfx,93,118,93 : redraw 1
						if deadp=10 : deadfx=118
						if deadp=20 : deadfx=236
						if deadp=30 : deadfx=118
						if deadp=40 : deadfx=0 : deadp=-1
						deadp+
						deadx-
						if deadx=418 : break
						await 1
						loop
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,0,0,118,93 : redraw 1 : wait 300
						deadfx=0 : deadp=0 : dead2p=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,0,118,93
						if (dead2p>=200){
							pos 600,10 : gmode 0 : gcopy 11,360,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						}
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255
						if (dead2p>=200)&(dead2p<700) : mes "�Ђ��I�H"
						if (dead2p>=700)&(dead2p<1200) : mes "���߁E�E�E�E�����E�E�E�E�E\n����ȁE�E�E�E�E�E�E�Ƃ���E�E�E�E"
						redraw 1
						if deadp=16 : deadfx=118
						if deadp=32 : deadfx=236
						if deadp=48 : deadfx=118
						if deadp=64 : deadfx=0 : deadp=-1
						deadp+
						dead2p+
						if dead2p=1200 : break
						await 1
						loop
						deadfx=0 : dead2p=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,0,118,93
						pos 600,10 : gmode 0 : gcopy 11,360,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255
						if dead2p<500 : mes "��E�E�E�E�E�E�E���E�E�E��E�E�E�E�E"
						if (dead2p>=500)&(dead2p<1000) : mes "���E�E�E���E�E��E�E�E�E\n����Ȃ́E�E�E�E\n�������E�E�E���E�E�E�悧��"
						redraw 1
						if deadp=10 : deadfx=118
						if deadp=20 : deadfx=236
						if deadp=30 : deadfx=0 : deadp=-1
						deadp+
						dead2p+
						if dead2p=1000 : break
						await 1
						loop
						deadp=0 : dead2p=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,555,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,0,118,93
						pos 600,10 : gmode 0 : gcopy 11,540,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255
						if dead2p<500 : mes "�����E�E�E�E�񂠁E�E�E�E�E"
						if (dead2p>=500)&(dead2p<1000) : mes "��E�E�E�߁E�E�E�E�E�E�Ă����E�E�E"
						if (dead2p>=1000)&(dead2p<1500) : mes "���������E�E�E�E�E�E�Ȃ����Ⴄ\n�E�E�E�E���悧���E�E�E"
						redraw 1
						if deadp=8 : deadfx=118
						if deadp=16 : deadfx=236
						if deadp=24 : deadfx=0 : deadp=-1
						deadp+
						dead2p+
						if dead2p=1200 : break
						loop
						deadp=0 : dead2p=0
						await 1
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,555,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,0,118,93
						pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255
						if dead2p<500 : mes "�Ђ����E�E�E�E���������I�H"
						if (dead2p>=500)&(dead2p<1000) : mes "�i���E�E�E�E�߁E�E�E�E�E�j"
						if (dead2p>=1000)&(dead2p<1500) : mes "�i���̒��E�E�E�E�E�^�����E�E�E�E\n�����E�E�E�E\n�l�����ȁE�E�E�E�j"
						if (dead2p>=1500)&(dead2p<2000) : mes "�i���ŁE�E�E�E����ȁE�E�E�E�E\n�����ɁE�E�E�E�E�j"
						if (dead2p>=2000)&(dead2p<2500) : mes "�i�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�j"
						redraw 1
						if deadp=8 : deadfx=118
						if deadp=16 : deadfx=0 : deadp=-1
						deadp+
						dead2p+
						if dead2p=2500 : break
						loop
						deadp=0 : dead2p=0
						await 1
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,555,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,0,118,93
						pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255
						if dead2p<300 : mes "�������E�E�E�E����"
						if dead2p>=250 : mes "�E�E�E�E�E�񂠂��I�H"
						redraw 1
						if deadp=5 : deadfx=118
						if deadp=10 : deadfx=0 : deadp=-1
						deadp+
						dead2p+
						if dead2p=300 : break
						await 1
						loop
						deadp=0 : dead2p=0 : deadfx=740
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,deadfx,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,0,0,118,93 : redraw 1
						if deadp=80 : deadfx=925
						if deadp=120 : deadfx=740 : deadp=-1
						deadp+
						dead2p+
						if dead2p=700 : break
						await 1
						loop
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,740,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,0,0,118,93
						pos 600,10 : gmode 0 : gcopy 11,900,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�͂��E�E�E�E�E�͂��E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,740,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,0,0,118,93 : redraw 1 : wait 500 : redraw 0
						deadx-=3
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,740,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,354,0,118,93 : redraw 1 : wait 50 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,354,0,118,93 : redraw 1 : wait 200 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 100 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 100 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,472,0,118,93
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ɂ����I������́E�E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 60 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 60 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,0,185,256
						pos deadx,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 60 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 200 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ɂ��ɂ��ɂ��ɂ��ɂ��ɂ��I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��߂āI���܂Ȃ��ŁI\n�ɂ����Ă΂��I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ɁE�E�E" : redraw 1 : wait 200 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 200 : redraw 0
						deadx-=1
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,219 : gmode 2 : gcopy 10,185,256,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,590,0,118,93 : redraw 1 : wait 3 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,185,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,590,0,118,93 : redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ⴀ���������������I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : dead2p=0 : deadfx=0 : deadfy=93
						repeat 
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,185,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,deadfy,118,93 : redraw 1
						if deadp=15 : deadfx=590 : deadfy=0
						if deadp=30 : deadfx=0 : deadfy=93 : deadp=-1
						deadp+
						dead2p+
						if dead2p=300 : break
						await 1
						loop
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,185,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,590,0,118,93 : redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���߂��E�E�E�E�H�ׂȂ��ŁE�E�E\n�H�ׂ��Ⴞ�߂����������I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,185,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,354,0,118,93 : redraw 1 : wait 150 : redraw 0
						deadx-=1
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,219 : gmode 2 : gcopy 10,370,256,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,590,0,118,93 : redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������������������������I�I�I�I\n�ɂ��ɂ��ɂ��ɂ��ɂ��[�[�[�[���I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : dead2p=0 : deadfx=0 : deadfy=93
						repeat 
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,deadfy,118,93 : redraw 1
						if deadp=15 : deadfx=590 : deadfy=0
						if deadp=30 : deadfx=0 : deadfy=93 : deadp=-1
						deadp+
						dead2p+
						if dead2p=300 : break
						await 1
						loop
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,370,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,354,0,118,93 : redraw 1 : wait 150 : redraw 0
						deadx-=1
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,219 : gmode 2 : gcopy 10,555,256,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,555,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,590,0,118,93 : redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������E�E�E�E�E����\n��E�E�E�E��h�߂��E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������߂ł����������I�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : dead2p=0 : deadfx=0 : deadfy=93
						repeat 
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,555,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,deadfy,118,93 : redraw 1
						if deadp=15 : deadfx=590 : deadfy=0
						if deadp=30 : deadfx=0 : deadfy=93 : deadp=-1
						deadp+
						dead2p+
						if dead2p=300 : break
						await 1
						loop
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,555,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,354,0,118,93 : redraw 1 : wait 150 : redraw 0
						deadx-=1
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,219 : gmode 2 : gcopy 10,740,256,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,740,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,590,0,118,93 : redraw 1 : wait 100 : redraw 0
						deadp=0 : dead2p=0 : deadfx=0 : deadfy=93
						repeat 
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,740,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,deadfy,118,93 : redraw 1
						if deadp=15 : deadfx=590 : deadfy=0
						if deadp=30 : deadfx=0 : deadfy=93 : deadp=-1
						deadp+
						dead2p+
						if dead2p=300 : break
						await 1
						loop
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,740,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,354,0,118,93 : redraw 1 : wait 150 : redraw 0
						deadx-=1
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,219 : gmode 2 : gcopy 10,925,256,185,256
						pos deadx-1,376 : gmode 2 : gcopy 13,472,0,118,93 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,925,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,590,0,118,93 : redraw 1 : wait 100 : redraw 0
						deadp=0 : dead2p=0 : deadfx=0 : deadfy=93
						repeat 
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,925,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,deadfx,deadfy,118,93 : redraw 1
						if deadp=15 : deadfx=590 : deadfy=0
						if deadp=30 : deadfx=0 : deadfy=93 : deadp=-1
						deadp+
						dead2p+
						if dead2p=300 : break
						await 1
						loop
						deadfx=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,740,256,185,256
						pos deadx,376 : gmode 2 : gcopy 13,354,0,118,93
						pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
						deadfx+=5
						if deadfx>255 : break
						await 1
						loop
						deadfx=255
						wait 500
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 330,220 : gmode 2 : gcopy 10,0,512,185,256
						pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
						deadfx-=5
						if deadfx<=0 : break
						await 1
						loop
						repeat
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
						
					}
					if dead=19{
						repeat
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=20{
						buffer 10 : picload "syokua.bmp"
						buffer 13 : picload "last.bmp" : gsel 0
						color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : redraw 0
						wait 200
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,0,0,230,300 : redraw 1
						wait 100
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E\n�́E�E�E�E�����Ă��I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,0,0,230,300 : redraw 1
						wait 300
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,230,0,230,300 : redraw 1 : wait 40
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,460,0,230,300 : redraw 1 : wait 40
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : deadfx=460 : dead2p=0
						repeat
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,deadfx,0,230,300
						if deadp=13 : deadfx=1150
						if deadp=18 : deadfx=920
						if deadp=23 : deadfx=690
						if deadp=36 : deadfx=920
						if deadp=41 : deadfx=1150
						if deadp=46 : deadfx=460 : deadp=-1
						if (dead2p>=100)&(dead2p<1100) {
						pos 600,10 : gmode 0 : gcopy 11,540,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						}
						if (dead2p>=100)&(dead2p<600) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�񂠂������������I�H" : redraw 1
						if (dead2p>=600)&(dead2p<1100) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E���߂�\n����������E�E�E�E" : redraw 1
						redraw 1
						if dead2p>=1400 : break
						deadp+
						dead2p+
						await 1
						loop
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,0,300,230,300 : redraw 1: wait 100
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,230,300,230,300 : redraw 1: wait 20
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,460,300,230,300 : redraw 1: wait 20
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,690,300,230,300 : redraw 1: wait 80
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ЂႤ���E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : deadfx=690 : dead2p=0
						repeat
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,deadfx,300,230,300
						if deadp=3 : deadfx=920
						if deadp=6 : deadfx=1150
						if deadp=9 : deadfx=920
						if deadp=12 : deadfx=690 : deadp=-1
						if (dead2p>=100)&(dead2p<1400) {
						pos 600,10 : gmode 0 : gcopy 11,540,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						}
						if (dead2p>=100)&(dead2p<400) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E���߁I�I�I\n�����͂₾�����I"
						if (dead2p>=400)&(dead2p<900) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E��߁E�E�E�E�Ă悧�E�E�E"
						if (dead2p>=900)&(dead2p<1400) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�����E�E�E�E�E\n�ςȂƂ��E�E�E������Ȃ��E�E�E�E��"
						redraw 1
						if dead2p>=1600 : break
						deadp+
						dead2p+
						await 1
						loop
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,0,600,230,300 : redraw 1 : wait 50
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,230,600,230,300 : redraw 1 : wait 50
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�I�H" : redraw 1 : wait 300
						deadp=0 : deadfx=460 : dead2p=0
						repeat
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,deadfx,600,230,300
						if deadp=3 : deadfx=690
						if deadp=6 : deadfx=920
						if deadp=9 : deadfx=690
						if deadp=12 : deadfx=460 : deadp=-1
						if (dead2p>=100)&(dead2p<1400) {
						pos 600,10 : gmode 0 : gcopy 11,540,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						}
						if (dead2p>=100)&(dead2p<400) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E�E\n��E�E�E�E�E�߁E�E�E�E�E"
						if (dead2p>=400)&(dead2p<900) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�́E�E�E�E�E\n�����āE�E�E���Ȃ��ł��E�E�E"
						if (dead2p>=900)&(dead2p<950) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�������I�H"
						redraw 1
						if dead2p>=950 : break
						deadp+
						dead2p+
						await 1
						loop
						deadp=0 : deadfx=1150 : dead2p=0 : deadfy=600
						repeat
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,deadfx,deadfy,230,300
						if deadp=5 : deadfx=0 : deadfy=900
						if deadp=10 : deadfx=230
						if deadp=15 : deadfx=0
						if deadp=20 : deadfx=1150 : deadfy=600 : deadp=-1
						if (dead2p>=100)&(dead2p<600) {
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						}
						if (dead2p>=100)&(dead2p<600) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���O�E�E�E�E�E�E�E�E�E�E�E�E�b�I�H"
						redraw 1
						deadp+
						dead2p+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=21{
						buffer 10 : picload "syokua.bmp"
						buffer 13 : picload "last.bmp" : gsel 0
						color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : redraw 0
						wait 200
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,0,0,230,300 : redraw 1
						wait 100
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E\n�́E�E�E�E�����Ă��I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						wait 300
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,460,900,230,300 : redraw 1 : wait 20
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,690,900,230,300 : redraw 1 : wait 20
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,920,900,230,300 : redraw 1 : wait 200
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ������E�E�E�E�I�H\n�ȁE�E�E�E�����E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : deadfx=920 : dead2p=0
						repeat
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,deadfx,900,230,300
						if deadp=10 : deadfx=1150
						if deadp=20 : deadfx=920 : deadp=-1
						if (dead2p>=100)&(dead2p<400) {
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						}
						if (dead2p>=100)&(dead2p<400) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�E\n���������������������������I�H"
						redraw 1
						if dead2p=500 : break
						deadp+
						dead2p+
						dead3p+
						await 1
						loop
						deadp=0 : deadfx=0 : dead2p=0 : dead3p=0
						repeat
						redraw 0 : pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 400,170 : gmode 2 : gcopy 13,0,0,350,300
						pos 300,170 : gmode 2 : gcopy 10,deadfx,1200,230,300
						if (dead3p<20)&(dead2p>=1000) : pos 300,170 : gmode 2 : gcopy 10,460,1200,230,300
						if (dead3p>=20)&(dead3p<40)&(dead2p>=1000) : pos 300,170 : gmode 2 : gcopy 10,690,1200,230,300
						if (dead3p>=40)&(dead2p>=1000) : pos 300,170 : gmode 2 : gcopy 10,920,1200,230,300
						if deadp=5 : deadfx=230
						if deadp=10 : deadfx=0 : deadp=-1
						if dead3p>=60 : dead3p=-1
						if (dead2p>=100)&(dead2p<1400) {
						pos 600,10 : gmode 0 : gcopy 11,720,360,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						}
						if (dead2p>=100)&(dead2p<400) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E���Ђ��I�H"
						if (dead2p>=400)&(dead2p<900) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђւ��E�E�E�E�ЁE�E�E�Ђ�߂��E�E�E"
						if (dead2p>=900)&(dead2p<1400) : font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E�E���������E�E�E\n���������E�E�E�E����"
						redraw 1
						deadp+
						dead2p+
						dead3p+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=22{
						lustlast=1
						redraw 0
						buffer 10 : picload "jigai.bmp"
						buffer 2 : picload "wseta.bmp": gsel 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,512,185,256 : redraw 1 : wait 80 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1 : wait 80 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�ȁE�E�E�E���H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ςȂ̋z����������E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 2,0,256,185,256 : redraw 1 : wait 200 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,768,185,256
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�̂������Ȃ��E�E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�E�₾�I\n�ǂ����āI�H\n���x�͉��Ȃ́I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 8,740,768,185,256 : redraw 1 : wait 200 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,0,185,256 : redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�̂�����ɁE�E�E�E�E�E�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,185,0,185,256 : redraw 1 : wait 200 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E����ȁE�E�E�E�E\n�₾�E�E�E�E�E�E�₾�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,185,0,185,256 : redraw 1 : wait 100 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx+3,cy : gmode 2 : gcopy 10,370,0,185,256 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,370,0,185,256 : redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�������I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,740,0,185,256 : redraw 1 : wait 100 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,555,0,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,740,0,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,555,0,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,740,0,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,555,0,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,740,0,185,256 : redraw 1 : wait 20 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E���Ⴀ���������I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,740,0,185,256 : redraw 1 : wait 100 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,925,0,185,256 : redraw 1 : wait 150 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����I�₾�E�E�E�E�E�₾���I\n������߂Ă��I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,925,0,185,256 : redraw 1 : wait 80 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx+3,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 80 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 80 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,185,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,185,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,185,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,185,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,185,256,185,256 : redraw 1 : wait 40 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 20 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������������������������I�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,0,256,185,256 : redraw 1 : wait 200 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,370,256,185,256 : redraw 1 : wait 150 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,555,256,185,256 : redraw 1 : wait 80 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ЁE�E�E�E�E\n���E�E�E�E����ȁE�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�E����E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,555,256,185,256 : redraw 1 : wait 200 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx+3,cy : gmode 2 : gcopy 10,740,256,185,256 : redraw 1 : wait 5 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,740,256,185,256 : redraw 1 : wait 80 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������������������������I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : dead2p=0 : deadfx=740 : deadfy=256 : deadf2x=185 : deadf2y=768 : deadbre=0 : deadf3x=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos cx,cy : gmode 2 : gcopy 10,deadf2x,deadf2y,185,256
						pos cx+deadbre,cy : gmode 2 : gcopy 10,deadfx,deadfy,185,256
						
						if (deadp>=660)&(deadp<800){
							pos 600,10 : gmode 0 : gcopy 11,900,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����������������I�H"
						}
						if (deadp>=1155)&(deadp<1355){
							pos 600,10 : gmode 0 : gcopy 11,540,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�O�Q�A�G�A�h�A�A�A�A�A�A�b�I�H"
						}
						pos 0,0 : gmode 3,,,deadf3x : gcopy 9,0,0,800,600 : redraw 1
						if deadp=300 : deadbre=3 : deadfx=925
						if deadp=305 : deadbre=0
						if deadp=605 : deadbre=3 : deadfx=0 : deadfy=512
						if deadp=610 : deadbre=0
						if deadp=910 : deadbre=3
						if deadp=915 : deadbre=0
						if deadp=935 : deadbre=3
						if deadp=940 : deadbre=0
						if deadp=960 : deadbre=3
						if deadp=965 : deadbre=0
						if deadp=960 : deadbre=3
						if deadp=965 : deadbre=0
						if deadp=1105 : deadfx=185 : dead2p=61 : deadf2x=740
						if deadp=1405 : deadfx=370
						if deadp=1415 : deadfx=555
						if deadp=1425 : deadfx=740
						if deadp=1435 : deadfx=925
						if deadp=1445 : deadfx=0 : deadfy=768
						if deadp>=1885 : deadf3x+=5 
						if deadp>=2000 : break
						if dead2p=20 : deadf2x=370
						if dead2p=40 : deadf2x=555
						if dead2p=60 : deadf2x=185 : dead2p=-1
						if dead2p=70 : deadf2x=925
						if dead2p=80 : deadf2x=0 : deadf2y=1024
						if dead2p=90 : deadf2x=740 : deadf2y=768 : dead2p=60
						deadp+
						dead2p+
						await 1
						loop
						repeat
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=23{
						buffer 5 : picload "passminti.bmp"
						buffer 10 : picload "passmintib.bmp"
						buffer 13 : picload "mintituta.bmp"
						buffer 15 : picload "minti.bmp"
						buffer 17 : picload "minti2.bmp" : gsel 0
						redraw 0
						color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 200 : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����I�H\n�ȁE�E�E�E��������I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1
						wait 200
						mappos=-400
						deadx=80 : dead2x=80 : bure=0
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380 : gmode 2 : gcopy 13,dead2x,100,830,100
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600 : redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��������������I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�₾�����I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						repeat
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380 : gmode 2 : gcopy 13,dead2x,100,830,100
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600 : redraw 1
						mappos+
						deadx+
						if mappos=-120 : break
						await 1
						loop
						mappos=-120 : wait 200
						repeat
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380 : gmode 2 : gcopy 13,dead2x,100,830,100
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600 : redraw 1
						dead2x+
						if dead2x=400 : break
						await 1
						loop
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380 : gmode 2 : gcopy 13,dead2x,200,830,100
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�E�₾�E�E�E�E\n����ȁE�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�E�E�E�E�E�₾�[�[�[�[���I\n�����āI�N���E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						repeat
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380 : gmode 2 : gcopy 13,dead2x,200,830,100
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600 : redraw 1
						dead2x+
						if dead2x=500 : break
						await 1
						loop
						repeat
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380 : gmode 2 : gcopy 13,dead2x,200,830,100
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600 : redraw 1
						dead2x+
						if dead2x=530 : break
						await 1
						loop
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380 : gmode 2 : gcopy 13,dead2x,200,830,100
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������E�E�E�������E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380 : gmode 2 : gcopy 13,dead2x,300,830,100
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,900,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����������I�I�I\n�������I�C�^�C�I�C�^�C�[�[�[�b�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						deadp=0 : dead2p=0 : dead3p=0 : dead4p=0 : dead5p=0 : dead2y=600 : bure=0 : bure2=0 : dead6p=0
						repeat
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,1200,600
						pos deadx,380+bure : gmode 2 : gcopy 13,dead2x,300,830,100
						pos 322+bure2,480 : gmode 2 : gcopy 15,0,dead2y,30,600
						pos mappos,0 : gmode 2 : gcopy 10,0,0,1200,600
						if dead6p<900{
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�M�G�b�I�I�I\n�M�G�G�@�A�A�A�A�A�A�A�A�A�A�A�A�A�A\n�A�A�A�A�A�A�A�A�A�A�A�A�A�A�A�A�A�A\n�������������������������O�Q�G�G�G�G\n����������������������������������"
						}
						redraw 1
						if deadp>=5  : dead2x+ : deadp=-5+rnd(5)
						if (dead2p>=400)&(dead3p>=5) : dead2y-=3 : dead3p=-5+rnd(5)
						if dead4p=10 : bure=-4+rnd(8)
						if dead4p>=13 : bure=0 : dead4p=-5+rnd(5)
						if dead5p=10 : bure2=-4+rnd(8)
						if dead5p>=13 : bure2=0 : dead5p=-5+rnd(5)
						deadp+
						dead2p+
						dead3p+
						dead4p+
						dead5p+
						dead6p+
						if dead2y<=10 : dead2y-=10
						if dead2y<=-700 : break
						await 1
						loop
						deadx=0 : dead2x=900
						wait 300
						repeat
						redraw 0
						pos mappos,deadx : gmode 0 : gcopy 5,0,0,1200,600
						pos mappos,deadx : gmode 2 : gcopy 10,0,0,1200,600
						pos 240,dead2x : gmode 0 : gcopy 17,0,0,185,150 : redraw 1
						deadx-
						dead2x-
						if dead2x<=300 : break
						await 1
						loop
						repeat
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=24{
						redraw 0 : color 255,0,0 : boxf 0,0,800,600 : redraw 1 : color 255,255,255
						deadp=255 : dead2p=0  : dead3p=0 : deadx=0 : dead2x=555
						buffer 5 : picload "room42b.bmp" : gsel 0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 300,250 : gmode 2 : gcopy 34,0,768,370,256
						pos 370,195 : gmode 2 : gcopy 34,deadx,512,185,256
						pos 370,195 : gmode 2 : gcopy 34,dead2x,512,185,256
						pos 0,0 : gmode 3,,,deadp : gcopy 9,0,0,800,600
						redraw 1
						if dead2p=10 : deadx=185
						if dead2p=15 : deadx=0 : dead2p=-10+rnd(10)
						if dead3p=10 : dead2x=740
						if dead3p=13 : dead2x=925
						if dead3p=16 : dead2x=555 : dead3p=-1
						deadp-
						dead2p+
						dead3p+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=25{
						buffer 10 : picload "grutony2.bmp"
						buffer 13 : picload "setmelt.bmp" 
						buffer 23 : screen 23,800,600 : pos 0,0 : color 255,255,0 : boxf 0,0,1800,1600 : color 255,255,255 : gsel 0
						redraw 0
						pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 0
						wait 300
						redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
						pos 280,200 : gmode 2 : gcopy 2,0,512,185,256
						redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���E�E�E�E�E���E�E�E�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i��E�E�E�E�E�₾���E�E�E�E\n����Ȃ́E�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
						pos 280,200 : gmode 2 : gcopy 13,0,0,185,256
						redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200 : redraw 1 :wait 200 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�̂��������Ȃ���E�E�E�E\n���̂܂܂���E�E�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�Ȃ�Ƃ��E�E�E�E\n�Ȃ�Ƃ����������Ȃ��ƁE�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
						pos 280,200 : gmode 2 : gcopy 2,0,512,185,256
						redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200: redraw 1 : wait 100
						redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
						pos 280,200 : gmode 2 : gcopy 13,185,0,185,256
						redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200: redraw 1 : wait 200 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i��E�E�E�E�E�E�₾���E�E�E�E�I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�����E�E�E�n���Ă�I�H�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
						pos 280,200 : gmode 2 : gcopy 13,185,0,185,256
						redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200 : redraw 1 : wait 50 : redraw 0
						dcou=0 : dim deathx,8 : dim deathy,8 : deadp=0 : deadfx=0 : filflag=0
						deathx=185,370,555,740,925,0,185,370
						deathy=0,0,0,0,0,256,256,256
						repeat
						if (deadp=200)&(dcou<7) {
							if dcou=3{
								pos 600,10 : gmode 0 : gcopy 11,540,900,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
								pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
								font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���E�E�E�E�E����ȁE�E�E�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
							}
							repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 23,0,0,1800,1600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=12
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
						}
						deadp+
						if dcou=7 : break
						await 1
						loop
						wait 200
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i��E�E�E�E�₾���E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�S���n������������j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���ł���ȂƂ���������Ȃ��\n�₾��E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i����ɁE�E�E�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i����ɁE�E�E�E�E�E\n����������Ȃ񂾂��̒���\n������������E�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
						pos 280,200 : gmode 2 : gcopy 13,555,256,185,256
						redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200: redraw 1 : wait 50 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���E�E�E�E�E�E�I�H�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�����E�E�E�E�I\n�ɂ��I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�������������I�H\n�ɂ��I�ɂ����I�I�I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						dcou=0 : dim deathx,9 : dim deathy,9 : deadfx=0 : filflag=0
						deathx=555,740,925,0,185,370,555,740,925
						deathy=256,256,256,512,512,512,512,512,512
						repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=6
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
							redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���Ⴀ�����������������I�I�I\n�ɂ��I�������悧���������I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						wait 200
						repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=6
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
						filflag=0 : deadfx=0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���������������������I�I�I\n�N���E�E�E�E�N�������āE�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=6
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
							wait 200
						repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=6
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�q�B�C�M�G�G�G�G�G�G�G�G�I�I�I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�₾�����������I�I�I\n����ȁE�E�E�E\n����Ȏ��ɕ��������������I�I�I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=6
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
						redraw 0 : pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���������������������I�I�I�I\n�ɂ��������C�^�C�C�^�C�C�_�C�C�_ijidi\n�Ђ�������������������������!!!!�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=6
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
						wait 200
						repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=6
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
						wait 200
						repeat
							redraw 0 : pos 400,300 : gmode 0,800,600 : grotate 10,0,0,0,1600,1200
							pos 280,200 : gmode 2 : gcopy 13,deathx.dcou,deathy.dcou,185,256
							redraw 0 : pos 400,300 : gmode 3,800,600,50 : grotate 10,0,0,0,1600,1200
							pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600 : redraw 1
							if filflag=0 : deadfx+=12
							if filflag=1 : deadfx-=6
							if deadfx>=255 : filflag=1 : dcou+ : deadfx=255
							if deadfx<=-1 : break
							await 1
							loop
							deadp=-1 : filflag=0 : deadfx=0
						repeat
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
						
					}
					if dead=26{
						buffer 10 : picload "grutony2.bmp"
						buffer 21 : picload "slaim.bmp" : gsel 0
						redraw 0
						pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : color 255,255,255
						wait 300
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos 250,280 : gmode 2 : gcopy 21,0,0,200,256
						pos 250,280 : gmode 2 : gcopy 21,0,256,200,256 : redraw 1
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��������E�E�E\n���₾���E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,180,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�N�������āE�E�E�E\n���ɂ����Ȃ��悧�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos 250,280 : gmode 2 : gcopy 21,0,0,200,256
						pos 250,280 : gmode 2 : gcopy 21,0,256,200,256 : redraw 1
						wait 300
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos 250,280 : gmode 2 : gcopy 21,0,0,200,256
						pos 250,280 : gmode 2 : gcopy 21,0,256,200,256 
						pos 250,280 : gmode 2 : gcopy 21,200,256,200,256 : redraw 1 : wait 20
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos 250,280 : gmode 2 : gcopy 21,0,0,200,256
						pos 250,280 : gmode 2 : gcopy 21,0,256,200,256 
						pos 250,280 : gmode 2 : gcopy 21,400,256,200,256 : redraw 1 : wait 20
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos 250,280 : gmode 2 : gcopy 21,0,0,200,256
						pos 250,280 : gmode 2 : gcopy 21,0,256,200,256 
						pos 250,280 : gmode 2 : gcopy 21,600,256,200,256 : redraw 1 : wait 20 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ЁE�E�E�E��" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E����̂��E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��߂āE�E�E�E�E�E�I\n�|����I��߁E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos 250,280 : gmode 2 : gcopy 21,400,0,200,256
						pos 250,280 : gmode 2 : gcopy 21,0,256,200,256 
						pos 250,280 : gmode 2 : gcopy 21,800,256,200,256 : redraw 1 : wait 100 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���O�D�����I�H�H" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos 250,280 : gmode 2 : gcopy 21,200,0,200,256
						pos 250,280 : gmode 2 : gcopy 21,0,256,200,256 
						pos 250,280 : gmode 2 : gcopy 21,800,256,200,256 : redraw 1 : wait 100
						deadp=0 : dead2p=0 : deadfx=200 : deadf2x=0 : dead3p=0 : deadx=0
						repeat
						redraw 0 : pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,mapsizeY
						pos 250,280 : gmode 2 : gcopy 21,deadfx,0,200,256
						pos 250,280 : gmode 2 : gcopy 21,0,256,200,256 
						pos 250,280 : gmode 2 : gcopy 21,deadf2x,512,200,256
						if (dead3p>100)&(dead3p<600) {
							pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���O�E�E�E�E�E�E�D�D�D�D�b�I�H"
						}
						pos 0,0 : gmode 3,,,deadx : gcopy 9,0,0,800,600
						redraw 1
						if deadp=100 : deadfx=400
						if deadp>=120 : deadfx=200 : deadp=-20+rnd(25)
						if dead2p=10 : deadf2x=200
						if dead2p=20 : deadf2x=400
						if dead2p=30 : deadf2x=0 : dead2p=-1
						if dead3p>=1300 : deadx+
						if dead3p>=1600 : break
						deadp+
						dead2p+
						dead3p+
						await 1
						loop
						
						if BOSSF=0{
						wait 500
						redraw 0
						pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : color 255,255,255 : wait 100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�E�E�E�E�E�E�E�E����H�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���E�E�E�E�E�ǂ��Ȃ����́E�E�E�H�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0
						pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : color 255,255,255 : wait 100
						pos 0,0 : color 100,100,0 : boxf 0,0,800,600 : redraw 1 : wait 100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i���E�E�E�E���̉��F���́E�E�E�H�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�ǂ����āE�E�E\n�̂������Ȃ��́E�E�E�E�H�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�₾�E�E�E�E�₾��E�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i������Ȃ���E�E�E�E�I\n�|����E�E�E�E�I�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i��̂ǂ��Ȃ���������́E�E�E�E\n���E�E�E�E�j" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 0,0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1 : wait 300
						deadp=0 : dead2p=0 : deadfx=0 : deadf2x=0
						repeat
						redraw 0
						color 0,0,0
						pos 0,0 : gmode 3,800,600,deadf2x : gcopy 5,0,0,800,600
						pos 290,275 : gmode 4,,,deadf2x : gcopy 21,600,512,200,256
						pos 300,290 : gmode 4,,,deadf2x : gcopy 34,deadfx,1024,185,256
						pos 290,275 : gmode 4,,,deadf2x-155 : gcopy 21,600,512,200,256
						color 255,255,255
						redraw 1
						if deadp=20 : deadfx=185
						if deadp=25 : deadfx=370
						if deadp=30 : deadfx=0 : deadp=-1
						deadp+
						dead2p+
						if deadf2x<255 : deadf2x+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					else{
					repeat
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					restart=0 : return
					}
					}
					if dead=27 {
						 restart=0 
						redraw 0
						buffer 13 : picload "onoatk.bmp" : gsel 0
						color 0,0,0 : boxf 0,0,800,600 : redraw 1 : wait 200
						redraw 0
						color 0,0,0 : boxf 0,0,800,600
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 160,120 : gmode 2 : gcopy 14,0,350,230,350
						pos 210,120 : gmode 2 : gcopy 19,50,350,230,350
						pos 300,200 : gmode 2 : gcopy 51,0,0,185,256
						redraw 1
						wait 200 : deadp=0 : deadfx=0 : deadfy=0 : deadf2x=0 : deadf2y=0 : deadf3x=0 : deadf3y=0
						redraw 0 : color 0,0,0 : boxf 0,0,800,600
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 110,70 : gmode 2 : gcopy 13,300,400,300,400
						pos 300,200 : gmode 2 : gcopy 51,0,0,185,256
						redraw 1 : wait 200
						deadp=0 : deadfx=0
						repeat
						redraw 0
						color 0,0,0 : boxf 0,0,800,600
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 110,70 : gmode 2 : gcopy 13,600,400,300,400
						pos 300,200 : gmode 2 : gcopy 51,deadfx,0,185,256: redraw 1
						if deadp=0 : deadfx=185
						if deadp=25 : deadfx=370
						if deadp=45 : deadfx=555
						if deadp=60 : deadfx=740
						if deadp=70 : deadfx=925
						deadp+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if dead=28 {									;�j�t���f���^�z�[�X
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,555,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 3
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy-10 : gmode 2 : gcopy 8,370,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180  : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 3
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,370,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180  : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 250
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,555,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 20
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,740,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 20
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,925,256,185,256
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 20
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy : gmode 2 : gcopy 8,0,512,185,256
					pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1 : wait 20
					deadp=-70+rnd(70) : deadfx=185 : keiren=0
					repeat
					redraw 0
					pos 0,0 : gmode 2 : gcopy 5,0,0,800,600
					pos cx,cy+20+keiren : gmode 2 : gcopy 8,deadfx,512,185,256 : redraw 1
					if deadp=0 : deadfx=370 : keiren=-1
					if deadp=2 : deadfx=185 : deadp=-70+rnd(70) : keiren=0
					deadp+
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					restart=0 : return
				}
				if dead=29 {
					redraw 0
					color 0,0,0 : boxf 0,0,800,600 : color 255,255,255 : redraw 1 : wait 300
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,0,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512 : redraw 1
					wait 200
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�₾����������\n���E�E�E����Ȃ̂��E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�~�낵�Ă��Ă΂��I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,800
					pos 300,95 : gmode 2 : gcopy 27,0,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512 : redraw 1
					wait 50
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,185,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,555,0,185,256 : redraw 1
					wait 50
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,185,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,740,0,185,256 : redraw 1
					wait 30
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,185,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,0,185,256 : redraw 1
					wait 50
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����E�E�E�E\n�ȁE�E�E�����I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					wait 50
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,370,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,555,256,185,256 : redraw 1 : wait 30
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�₾�b�I\n���E�E�E�ʖڂ��E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					wait 100
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,555,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,740,256,185,256 : redraw 1 : wait 30
					pos 600,10 : gmode 0 : gcopy 11,360,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������������\n���߂�������" : redraw 1 : wait 30 : gosub *read : redraw 0
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����Ⴞ�߂����I\n���Ȃ��ł患�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,555,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,740,256,185,256 : redraw 1
					wait 200
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,740,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,256,185,256 : redraw 1
					wait 4
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,740,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,740,256,185,256 : redraw 1 : wait 20
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,360,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ⴄ����I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					deadp=0 : dead2p=0 : deadf2x=0 : deadf2y=512
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,740,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,deadf2x,deadf2y,185,256
					if (dead2p>=200)&(dead2p<500) {
						pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E����\n��E�E�E�E�߁E�E�E�E"
					}
					if (dead2p>=500)&(dead2p<900) {
						pos 600,10 : gmode 0 : gcopy 11,540,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E��E�E�E�E\n����ȂƂ���E�E�E\n�����E�E�E����E�E�E�E\n���́E�E���E���E�E�E"
					}
					if (dead2p>=900)&(dead2p<1300) {
						pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E����E�E�E�E\n�ŁE�E�E�E�ł���E�E�E���E�E�E�E\n�񂭂����E�E�E�E���悧�E�E�E�I"
					}
					if (dead2p>=1300)&(dead2p<1400) {
						pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�͂������E�E�E�E�I�I�I"
					}
					redraw 1
					if deadp>=5 : deadf2x=0 : deadf2y=512
					if deadp>=8 : deadf2x=925 : deadf2y=256 : deadp=-1
					if dead2p>=1500 : break
					deadp+
					dead2p+
					await 1
					loop
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,925,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,185,512,185,256 : redraw 1
					wait 5
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,925,0,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,370,512,185,256 : redraw 1 : wait 5
					deadp=0 : deadfx=0 : dead2p=0
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,deadfx,256,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,370,512,185,256
					if (dead2p>=200)&(dead2p<500) {
						pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E������������"
					}
					redraw 1
					if deadp=5 : deadfx=185
					if deadp=10 : deadfx=370
					if deadp=15 : deadfx=0 : deadp=-1
					if dead2p>=700 : break
					deadp+
					dead2p+
					await 1
					loop
					deadp=0 : deadfx=0 : dead2p=0
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,deadfx,256,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,370,512,185,256
					redraw 1
					if deadp=10 : deadfx=555
					if deadp=20 : deadfx=740 : deadp=-1
					if dead2p>=400 : break
					deadp+
					dead2p+
					await 1
					loop
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,925,256,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,370,512,185,256 : redraw 1 : wait 100
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�������E�E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����₾���E�E�E�E\n���������Ă悧\n�����Ђǂ������Ȃ��ł悧�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,925,256,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,370,512,185,256 : redraw 1 : wait 100
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,925,256,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,555,512,185,256 : redraw 1 : wait 20
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,925,256,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,740,512,185,256 : redraw 1 : wait 100
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,0,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,512,185,256 : redraw 1 : wait 50
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E�E�₾�I\n�����₾���I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "������߂āE�E�E�E\n�����E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,0,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,512,185,256 : redraw 1 : wait 150
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,185,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,0,768,185,256 : redraw 1 : wait 50
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�E�������I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�����E�E�E�����E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,185,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,0,768,185,256 : redraw 1 : wait 100
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,185,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,185,768,185,256 : redraw 1 : wait 50
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������E�E�E�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ɂ��ɂ��ɂ��ɂ�������������������\n�C�^�C�[�[�[�[�[�b�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,185,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,185,768,185,256 : redraw 1 : wait 100
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,185,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,370,768,185,256 : redraw 1 : wait 50
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����E�E�E�E�E\n�������������I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
					deadp=0 : dead2p=0 : dead3p=0 : deadfx=370 : deadf2x=555
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,deadfx,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,deadf2x,768,185,256
					if (dead3p>=200)&(dead3p<500){
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����������������E�E�E�E\n�ɂ���E�E�E�ɂ���[�[�[���I�I�I"
					}
					redraw 1
					if deadp=10 : deadfx=555
					if deadp=20 : deadfx=370 : deadp=-1
					if dead2p=20 : deadf2x=740
					if dead2p=25 : deadf2x=925
					if dead2p=30 : deadf2x=555 : dead2p=-1
					if dead3p>=700 : break
					dead2p+
					deadp+
					dead3p+
					await 1
					loop
					dead3p=0
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,740,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,deadf2x,768,185,256
					if (dead3p>=200)&(dead3p<500){
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�͂����E�E�E�͂����E�E�E�E\n�����E�E�E�E"
					}
					if (dead3p>=500)&(dead3p<800){
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�����E�E�E�E\n��E�E�E���E�E�E������E�E�E"
					}
					if (dead3p>=800)&(dead3p<1200){
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,540,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "����E�E�E�E���E�E�E�E\n�񂠂��E�E�E�E"
					}
					if (dead3p>=1200)&(dead3p<1400){
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�͂��E�E�E�E�񂠂������E�E�E�I�I�I"
					}
					redraw 1
					if dead2p=20 : deadf2x=740
					if dead2p=25 : deadf2x=925
					if dead2p=30 : deadf2x=555 : dead2p=-1
					if dead3p>=1450 : break
					dead2p+
					dead3p+
					await 1
					loop
					deadp=0 : dead2p=0 : deadfx=740
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,deadfx,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256
					redraw 1
					if deadp=10 : deadfx=925
					if deadp=80 : deadfx=740 : deadp=-1
					if dead2p>=1000 : break
					deadp+
					dead2p+
					await 1
					loop
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,925,512,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256 : redraw 1 : wait 100
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,900,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ�[�A�Ђ�[�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,0,768,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256 : redraw 1 : wait 100
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					deadfx=0 : deadp=0 : dead2p=0
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,deadfx,768,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256 : redraw 1
					if deadp=5 : deadfx=185
					if deadp=10 : deadfx=0 : deadp=-1
					if dead2p>=300 : break
					deadp+
					dead2p+
					await 1
					loop
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,0,768,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256 : redraw 1 : wait 100
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,900,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�ȁE�E�E�E�E���E�E�E\n����E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,720,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					deadfx=370 : deadp=0 : dead2p=0
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,deadfx,768,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256 : redraw 1
					if deadp=5 : deadfx=555
					if deadp=10 : deadfx=370 : deadp=-1
					if dead2p>=300 : break
					deadp+
					dead2p+
					await 1
					loop
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,370,768,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256 : redraw 1 : wait 100
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������������������I�H" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos 600,10 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E����E�E�E���E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,370,768,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256 : redraw 1 : wait 300
					deadfx=740 : deadp=0 : dead2p=0
					repeat
					redraw 0 : pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
					pos 300,95 : gmode 2 : gcopy 27,deadfx,768,185,256
					pos 300,0 : gmode 2 : gcopy 29,185,0,185,512
					pos 300,95 : gmode 2 : gcopy 29,925,768,185,256
					if (dead2p>=100)&(dead2p<500){
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
					pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
					font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�O�M�G�G�G�G�G�G�G�G�G�G�G\n�G�G�G�G�G�G�G�b�c�I�I�I�I" 
					}
					redraw 1
					if deadp=5 : deadfx=925
					if deadp=10 : deadfx=740 : deadp=-1
					deadp+
					dead2p+
					gosub *yarinaoshi
					if restart=1 : break
					await 1
					loop
					restart=0 : return
				}
					if rusidead=0 {
						 restart=0 
						redraw 0
						buffer 13 : picload "onoatk.bmp"
						if stage=6 : buffer 2 : picload "wsetacore.bmp" : else : buffer 2 : picload "wseta.bmp"
						gsel 0
						color 0,0,0 : boxf 0,0,800,600 : redraw 1 : wait 200
						redraw 0
						color 0,0,0 : boxf 0,0,800,600
						pos 140,120 : gmode 2 : gcopy 14,0,350,230,350
						pos 190,120 : gmode 2 : gcopy 19,50,350,230,350
						pos 300,200 : gmode 2 : gcopy 8,740,768,185,256
						redraw 1
						wait 200 : deadp=0 : deadfx=0 : deadfy=0 : deadf2x=0 : deadf2y=0 : deadf3x=0 : deadf3y=0
						redraw 0
						color 0,0,0 : boxf 0,0,800,600
						pos 90,70 : gmode 2 : gcopy 13,0,400,300,400
						pos  300,200 : gmode 2 : gcopy 8,740,768,185,256
						redraw 1 : wait 20
						redraw 0
						color 0,0,0 : boxf 0,0,800,600
						pos 90,70 : gmode 2 : gcopy 13,300,400,300,400
						pos  300,200 : gmode 2 : gcopy 8,740,768,185,256
						redraw 1 : wait 150
						repeat
						redraw 0
						color 0,0,0 : boxf 0,0,800,600
						pos 150,70 : gmode 2 : gcopy 13,900,400,300,400
						pos  300,200 : gmode 2 : gcopy 8,deadfx,1024,185,256 : redraw 1
						if deadp=10 : deadfx=185
						if deadp=20 : deadfx=370
						if deadp=30 : deadfx=555
						deadp+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if rusidead=1 {
						restart=0 
						redraw 0
						if stage=6 : buffer 10 : picload "kubinasico.bmp" : else : buffer 10 : picload "kubinasi.bmp"
						buffer 13 : picload "onoatk.bmp"
						if stage=6 : buffer 2 : picload "wsetacore.bmp" : else : buffer 2 : picload "wseta.bmp"
						gsel 0
						color 0,0,0 : boxf 0,0,800,600 : redraw 1 : wait 200
						redraw 0 : color 0,0,0 : boxf 0,0,800,600
						pos 140,120 : gmode 2 : gcopy 14,0,350,230,350
						pos 190,120 : gmode 2 : gcopy 19,50,350,230,350
						pos 300,200 : gmode 2 : gcopy 8,740,768,185,256
						redraw 1
						wait 200 : deadp=0 : deadfx=0 : deadfy=0 : deadf2x=0 : deadf2y=0 : deadf3x=0 : deadf3y=0
						redraw 0 : color 0,0,0 : boxf 0,0,800,600
						pos 90,70 : gmode 2 : gcopy 13,0,400,300,400
						pos  300,200 : gmode 2 : gcopy 8,740,768,185,256
						redraw 1 : wait 20
						redraw 0 : color 0,0,0 : boxf 0,0,800,600
						pos 90,70 : gmode 2 : gcopy 13,300,400,300,400
						pos  300,200 : gmode 2 : gcopy 8,740,768,185,256
						redraw 1 : wait 150
						repeat
						redraw 0 : color 0,0,0 : boxf 0,0,800,600
						pos 350,200 : gmode 2 : gcopy 8,deadf3x+50,1280,185,256 
						pos 300,200 : gmode 2 : gcopy 10,deadf2x,0,185,256
						pos 90,70 : gmode 2 : gcopy 13,deadfx,800,300,400 : redraw 1
						if deadp=10 : deadf2x=185 : deadf3x=185
						if deadp=20 : deadf2x=185 : deadf3x=370
						if deadp=30 : deadf2x=370 : deadf3x=555
						if deadp=50 : deadfx=300  : deadf2x=555
						if deadp=70 : deadf2x=740
						if deadp=270 : deadf2x=925
						if deadp=275 : deadf2x=740
						if deadp=550 : deadf2x=925
						if deadp=555 : deadf2x=740
						if deadp=560 : deadf2x=925
						if deadp=565 : deadf2x=740
						deadp+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if rusidead=2 {
						restart=0
						color 0,0,0 : boxf 0,0,800,600 : redraw 1
						wait 200 
						buffer 5 : picload "roomexcute1.bmp"
						buffer 10 : picload "maptatuset.bmp" 
						buffer 13 : picload "katanaatk.bmp": gsel 0
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos 300,200 : gmode 2 : gcopy 8,740,768,185,256
						pos 120,70 : gmode 2 : gcopy 13,0,0,400,400
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E�E�Ђ�������" : redraw 1
						wait 30 : gosub *read
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����E�E�E�E�O�X��\n���E�E�E�E���Ȃ��ł��E�E�E\n�܂����ɂ����Ȃ��悧���E�E�E" : redraw 1
						wait 30 : gosub *read
						wait 130 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 8,740,768,185,256
						pos 120,70 : gmode 2 : gcopy 13,400,0,400,400
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180 : redraw 1
						wait 180 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 22,185,768,185,256
						pos 120,70 : gmode 2 : gcopy 13,800,0,400,400 : redraw 1
						wait 70 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ���E�E�E�I�I�I" : redraw 1
						wait 100 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "��E�E�E��߂��E�E�E\n��߁E�E�E�E�Ă����E�E�E" : redraw 1
						wait 30 : gosub *read
						pos 600,10 : gmode 0 : gcopy 11,540,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�����E�E�E�E�E\n�����E�E�E�I" : redraw 1
						wait 80 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 22,185,768,185,256
						pos 120,70 : gmode 2 : gcopy 13,800,0,400,400 : redraw 1
						wait 70
						restart=0 : dcou=0 : dim deathfx,5 : dim deathp,5
						deadp=0 : gkr=0
						deathfx=185,370,555,740,925
						deathp=20,40,80,120,200
						repeat 
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 22,deathfx.dcou,768,185,256
						pos 120,70 : gmode 2 : gcopy 13,800,0,400,400
						redraw 1
						if deadp=deathp.dcou : dcou+
						if deadp=121 : break
						deadp+
						await 1
						loop
						wait 400 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ˁE�E�E" : redraw 1
						wait 150 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,900,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���ˁE�E�E���˂������܂��E�E�E\n����E�E�E�E���Ȃ��ł����������E�E�E\n�����E�E�E�Ђ������E�E�E" : redraw 1
						wait 30 : gosub *read
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 22,925,768,185,256
						pos 120,70 : gmode 2 : gcopy 13,800,0,400,400 : redraw 1
						wait 400 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 22,0,1024,185,256
						pos 120,70 : gmode 2 : gcopy 13,0,400,400,400 : redraw 1
						wait 300 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�I" : redraw 1
						wait 350 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 22,185,1024,185,256
						pos 120,70 : gmode 2 : gcopy 13,0,400,400,400 : redraw 1: redraw 0
						pos 600,10 : gmode 0 : gcopy 11,720,180,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E" : redraw 1 : wait 30 : gosub *read
						wait 50 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E\n�����āE�E�E�E�����́H" : redraw 1
						wait 30 : gosub *read
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 22,185,1024,185,256
						pos 120,70 : gmode 2 : gcopy 13,0,400,400,400 : redraw 1:
						wait 500 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E\n�i�ǂ����Ă�߂��񂾂낤�j" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�E�E�E�E�E\n�i�Ђ���Ƃ���ƁE�E�E�j" : redraw 1
						wait 30 : gosub *read : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i����Ȏp�����Ă邯�ǁE�E�E\n���̐l�ɂ��ǐS�݂����Ȃ��̂�\n�E�E�E�E" : redraw 1
						wait 150
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i����Ȏp�����Ă邯�ǁE�E�E\n���̐l�ɂ��ǐS�݂����Ȃ��̂�\n�E�E�E�E����E�E�E�̂����j" : redraw 1
						wait 30 : gosub *read
						wait 200 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�ƁE�E�E�Ƃɂ����E�E�E�E�E" : redraw 1
						wait 50
						wait 200 : redraw 0
						pos 600,10 : gmode 0 : gcopy 11,360,0,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�i�ƁE�E�E�Ƃɂ����E�E�E�E�E\n������" : redraw 1
						wait 50 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 10,0,0,185,256
						pos 120,70 : gmode 2 : gcopy 13,400,400,400,400
						pos  300,200 : gmode 2 : gcopy 10,0,256,185,256 : redraw 1
						wait 30 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 10,0,0,185,256
						pos 120,70 : gmode 2 : gcopy 13,400,800,400,400
						pos  301,200 : gmode 2 : gcopy 10,0,256,185,256 : redraw 1
						wait 20 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 10,740,1024,185,256
						pos  300,200 : gmode 2 : gcopy 10,0,0,185,256
						pos 120,70 : gmode 2 : gcopy 13,0,800,400,400
						pos  301,200 : gmode 2 : gcopy 10,0,256,185,256 : redraw 1
						wait 20 : redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 10,740,1024,185,256
						pos  300,200 : gmode 2 : gcopy 10,0,0,185,256
						pos 120,70 : gmode 2 : gcopy 13,400,800,400,400
						pos  301,200 : gmode 2 : gcopy 10,0,256,185,256 : redraw 1
						wait 200 : redraw 0
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���E�E�E�E�E�E�H" : redraw 1
						wait 200
						restart=0 : dcou=0 : dim deathfx,6 : dim deathf2x,6 : dim deathp,6
						deadp=0 : gkr=0 : zureA=0 : zureB=0
						deathfx=0,185,370,555,740,925,925
						deathf2x=0,185,370,555,740,925
						deathp=200,210,265,280,295,700
						repeat 
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 10,740,1024,185,256
						pos 120,70 : gmode 2 : gcopy 13,400,800,400,400
						pos  300+zureA,200+zureC : gmode 2 : gcopy 10,deathfx.dcou,0,185,256
						pos  301+zureB,200+zureC : gmode 2 : gcopy 10,deathf2x.dcou,256,185,256 : redraw 1
						if deadp=deathp.dcou : dcou+
						if deadp=200 : zureC=20
						if deadp=210 : zureC=40
						if deadp=265 : zureA=-80 : zureB=80
						if deadp=400 : break
						deadp+
						await 1
						loop
						deadp=0
						repeat
						redraw 0
						pos 0,0 : gmode 0 : gcopy 5,0,0,800,600
						pos  300,200 : gmode 2 : gcopy 10,740,1024,185,256
						pos 120,70 : gmode 2 : gcopy 13,400,800,400,400
						pos  220,240 : gmode 2 : gcopy 10,925,0,185,256
						pos  381,240 : gmode 2 : gcopy 10,925,256,185,256
						pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600 : redraw 1
						if deadp=1000 : filterR=50
						if deadp=1020 : filterR=100
						if deadp=1040 : filterR=150
						if deadp=1060 : filterR=200
						if deadp=1080 : filterR=250
						if deadp=1100 : filterR=255
						deadp+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if rusidead=3 {
						restart=0 
						redraw 0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1
						wait 100
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ��E�E�E�E\n��E�E�E�E��߁E�E�E�E" : redraw 1 : wait 300
						redraw 0 : color 255,0,0 : boxf 0,0,800,600 : redraw 1
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�E�M�b�E�E�E�E�M�G�G�b�E�E�E�E" : redraw 1 : wait 300
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���������I�I�I�I" : redraw 1 : wait 300
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ⴀ����������������������\n���������������I�I�I" : redraw 1 : wait 300
						deadfx=255
						redraw 0 : color 255,0,0 : boxf 0,0,800,600 : redraw 1
						wait 200
						repeat
						redraw 0
						pos mappos,0 : gmode 0 : gcopy 5,0,0,mapsizeX,600
						pos 100,120 : gmode 2 : gcopy 14,0,700,300,350
						pos 300,200 : gmode 2 : gcopy 8,370,768,185,256
						pos 0,0 : gmode 3,,,deadfx : gcopy 9,0,0,800,600
						redraw 1
						if deadfx<=0 : break
						deadfx-
						await 1
						loop
						deadp=0
						repeat
						pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600 : redraw 1
						if deadp=300 : filterR=50
						if deadp=320 : filterR=100
						if deadp=340 : filterR=150
						if deadp=360 : filterR=200
						if deadp=380 : filterR=250
						if deadp=400 : filterR=255
						deadp+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if rusidead=4 {
						restart=0 
						redraw 0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1
						wait 300
						buffer 5 : picload "room63b.bmp"
						buffer 13 : picload "abura.bmp"
						buffer 15 : picload "turisage.bmp" : gsel 0
						deadp=0 : deadfx=0 : dcou=0 : dead2p=0
						dim deathp,3 : dim deathfx,3
						deathp=999,1599,9000
						deathfx=0,300,600
						repeat
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 200,100 : gmode 2 : gcopy 13,deadfx,0,400,400
						pos 200,100 : gmode 2 : gcopy 13,deadfx,400,400,400
						pos 250,0 : gmode 2 : gcopy 15,deathfx.dcou,0,300,350
						if (dead2p>=100)&(dead2p<400){
							redraw 0 : pos 600,410 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,410 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,410 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,420 : color 255,255,255 : mes "�Ђ����������������I�I�I"
						}
						if (dead2p>=400)&(dead2p<700){
							redraw 0 : pos 600,410 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,410 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,410 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,420 : color 255,255,255 : mes "�ɂ��ɂ����I\n�����ꂿ�Ⴄ�您�������I�I�I"
						}
						if (dead2p>=1000)&(dead2p<1300){
							redraw 0 : pos 600,410 : gmode 0 : gcopy 11,1080,540,180,180 : pos 600,410 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,410 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,420 : color 255,255,255 : mes "�������E�E�E�E�I\n���Ђ����������I�I�H"
						}
						if (dead2p>=1600)&(dead2p<1800){
							redraw 0 : pos 600,410 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,410 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,410 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,420 : color 255,255,255 : mes "�������E�E�E���Ⴀ�����������I�I�I�I"
						}
						if (dead2p>=1600)&(dead2p<1800){
							redraw 0 : pos 600,410 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,410 : gmode 2 : gcopy 11,1080,180,180,180
							pos 20,410 : gmode 0 : gcopy 12,0,0,563,180
							font "�l�r �S�V�b�N",30 : pos 30,420 : color 255,255,255 : mes "�Ђ������I�I�I\n�������E�E�E��������E�E�E�E"
						}
						redraw 1
						if (dead2p=deathp.dcou)&(dcou<2) : dcou+
						if dead2p>=1800 : break
						if deadp=3 : deadfx=400
						if deadp=6 : deadfx=800
						if deadp=9 : deadfx=0 : deadp=-1
						deadp+
						dead2p+
						await 1
						loop
						deadfx=0 : fall=0.0 : deadf2x=0.0
						repeat
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 200,100 : gmode 2 : gcopy 13,deadfx,0,400,400
						pos 250.0,deadf2x : gmode 2 : gcopy 15,0,350,300,350
						pos 200,100 : gmode 2 : gcopy 13,deadfx,400,400,400
						pos 250,0 : gmode 2 : gcopy 15,300,350,300,350 : redraw 1
						deadf2x+=fall*fall
						if fall<9 : fall+=0.3
						if deadf2x>=170 : break
						if deadp=3 : deadfx=400
						if deadp=6 : deadfx=800
						if deadp=9 : deadfx=0 : deadp=-1
						deadp+
						await 1
						loop
						pos 20,410 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,420 : color 255,255,255 : mes "���������������������I�I�I\n���Â����I���Â��E�E�E�E" : redraw 1 : wait 30 : gosub *read : redraw 0
						pos 20,410 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,420 : color 255,255,255 : mes "�Ђ������������������I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						dead2p=0 : filter=0
						repeat
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 200,100 : gmode 2 : gcopy 13,deadfx,0,400,400
						pos 200,100 : gmode 2 : gcopy 13,deadfx,400,400,400
						pos 250,0 : gmode 2 : gcopy 15,300,350,300,350
						pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600 : redraw 1
						if dead2p=400 : filterR=50
						if dead2p=420 : filterR=100
						if dead2p=440 : filterR=150
						if dead2p=460 : filterR=200
						if dead2p=480 : filterR=250
						if dead2p=500 : filterR=255
						if deadp=3 : deadfx=800
						if deadp=6 : deadfx=800
						if deadp=9 : deadfx=0 : deadp=-1
						deadp+
						dead2p+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					if rusidead=5 {
						restart=0 
						redraw 0 : color 0,0,0 : boxf 0,0,800,600 : redraw 1
						wait 300
						buffer 5 : picload "room63b.bmp"
						buffer 13 : picload "mokuba.bmp"
						buffer 15 : picload "mokubab.bmp" : gsel 0
						deadp=0 : deadfx=0.0
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618 : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362 : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106 : gmode 2 : gcopy 15,555,0,185,256
						pos 259,150 : gmode 2 : gcopy 15,0,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,0,0,200,300 : redraw 1
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�Ђ����E�E�E�E�₾��\n��߂Ă悧" : redraw 1 : wait 30 : gosub *read : redraw 0
						repeat
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,150.0+deadfx : gmode 2 : gcopy 15,370,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,0,0,200,300
						pos 259,150.0+deadfx : gmode 2 : gcopy 15,185,0,185,256
						redraw 1
						deadfx+=0.3
						if deadfx>=70 : break
						await 1
						loop
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,720,540,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�₾�E�E�E�E�₾�[�[�[�[���I\n�ɂ��̂₾���I��΂₾�悧" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,150.0+deadfx : gmode 2 : gcopy 15,370,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,0,0,200,300
						pos 259,150.0+deadfx : gmode 2 : gcopy 15,185,0,185,256 : redraw 1
						wait 200
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,200,0,200,300 : redraw 1
						wait 100
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�������E�E�E�I\n�ɂ��A�������[�[�[�[�I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,200,0,200,300 : redraw 1
						wait 200
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,400,0,200,300 : redraw 1
						wait 100
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,600,0,200,300 : redraw 1
						wait 100
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "�����������E�E�E\n�����Ђ����������������I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,600,0,200,300 : redraw 1
						wait 200
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,800,0,200,300 : redraw 1
						wait 100
						redraw 0 : pos 600,10 : gmode 0 : gcopy 11,0,720,180,180 : pos 600,10 : gmode 2 : gcopy 11,1080,180,180,180
						pos 20,10 : gmode 0 : gcopy 12,0,0,563,180
						font "�l�r �S�V�b�N",30 : pos 30,20 : color 255,255,255 : mes "���Ђ��E�E�E�E���������I�I�I\n���������������������I�I�I" : redraw 1 : wait 30 : gosub *read : redraw 0
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,800,0,200,300 : redraw 1 : wait 200
						deadp=0
						repeat
						redraw 0
						pos -400,0 : gmode 0 : gcopy 5,0,0,1600,600
						pos 259,-618.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-362.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 259,-106.0+deadfx : gmode 2 : gcopy 15,555,0,185,256
						pos 250,200 : gmode 2 : gcopy 13,800,0,200,300
						pos 0,0 : gmode 3,,,filterR : gcopy 9,0,0,800,600 : redraw 1
						if deadp=300 : filterR=50
						if deadp=320 : filterR=100
						if deadp=340 : filterR=150
						if deadp=360 : filterR=200
						if deadp=380 : filterR=250
						if deadp=400 : filterR=255
						deadp+
						gosub *yarinaoshi
						if restart=1 : break
						await 1
						loop
						restart=0 : return
					}
					
						
						
						
							
							
						
						
						
						
						
						
*yarinaoshi
				gkr=0
				getkey gkr,82
				if gkr=1 {
					if BOSSA=1 {
						point=600
						dir=0 : gkr=0
						if ev3=1 : buffer 5 : picload "room4b.bmp" : gsel 0 : else : buffer 5 : picload "room4a.bmp" : gsel 0
						buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=60 : canmovR=700
						figure=0 : BOSSA=0 : life=100 : stmn=1000 : stun=0 : filterR=0
						bossatackA=0 : ueatack_on=0 : sitaateck_on=0 : BosshitA=0 : uemotion=0 : sitamotion=0 : bossmode=0
						deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0
						gosub *mapmov
						map=6 : scl=0 : ev4=0 : gkr=0
						restart=1 : font "�l�r �S�V�b�N",30
						return
					}
					if BOSSB=1 {
						ev6=0 : ev9=0
					itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
					itemA=0 : itemB=0 : itemC=0 : itemD=0 : itemE=0 : itemF=0 : itemG=0 : itemH=0 : itemI=0 : tosenbo=0
					item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
					if stockr>0
					repeat stockr
					potion=-1: gosub *getdrag
					loop
					if stockb>0
					repeat stockb
					potion=-2: gosub *getdrag
					loop
					muteki=1 : life=100 : stmn=1000 : wrahantei=0 : satray=0
					settrap=0 : BOSSB=0 : cauntdown=0 : sat_A=0 : sat_B=0 : sat_C=0 : sat_D=0 : sat_E=0 : wrapos=0 : satbigray=0
					gkr=0
					figure=0 : mapitem=0 : filterR=0 : cantstand=0 : stun=0 : press=0 : posdead=0 : scl=0 : deadpat=0
					itemA=1 : itemB=1 : itemD=1 : itemE=1 : itemnam=5: gosub *getitem
					buffer 5 : picload "room6a.bmp" : gsel 0
					buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
					point=300 : dir=0 : fx=0 : fdx=740
					figure=0
					canmovL=0 : canmovR=800
					map=9
					mapsizeX=800 : mapsizeY=600 : mappos=0
					deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0
					gosub *mapmov
					restart=1 : font "�l�r �S�V�b�N",30
					return
					}
					if BOSSC=1 {
						point=90
						itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
						item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
						if stockr>0
						repeat stockr
						potion=-1: gosub *getdrag
						loop
						if stockb>0
						repeat stockb
						potion=-2: gosub *getdrag
						loop
						buffer 5 : picload "room19a.bmp" : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=70 : canmovR=800
						figure=0
						gkr=0
						dir=0 : ev16=0 : stone=0
						buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=60 : canmovR=700
						figure=0 : BOSSC=0 : life=100 : stmn=1000 : stun=0 : filterR=0 : deadpat=0
						bossatackA=0 : ueatack_on=0 : sitaateck_on=0 : mamohit=0 : uemotion=0 : sitamotion=0 : bossmode=0
						repeat kemu
							kemuri_on.cnt=0
							kemuri.cnt=0
							kemurihit.cnt=0
						loop
						gosub *mapmov
						map=32 : scl=0 : gkr=0 : deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0
						restart=1 : font "�l�r �S�V�b�N",30
						return
					}
					if BOSSD=1 {
						point=300
						itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
						item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
						repeat bkemu
						bkemu2_on.cnt=0
						bkemu2hit.cnt=0
						loop
						if stockr>0
						repeat stockr
						potion=-1: gosub *getdrag
						loop
						if stockb>0
						repeat stockb
						potion=-2: gosub *getdrag
						loop
						hiding=0
						beruatkp=0 : beruatk=0 : beruatk2p=0 : ev23=0 : bktype2d=0 : equip=0
						agrara=0 : haveagra=0 : havekindan=0 : nure=0 : kawaki=0 : mapwater=0
						item_used=100 : item_del=1 : gosub *useitems : gosub *useitem : item_used=-4 : item_del=1 : gosub *useitems : gosub *useitem
						item_used=0
						using=0
						buffer 5 : picload "room24b.bmp" : gsel 0
						if drag1.2=0 : mapitem=1 : itemx=215 : itemy=440 : Icolor=24 : else : mapitem=0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=800
						figure=0
						gkr=0
						dir=0 : ev16=0 : stone=0 : fatalst=0 : slow=0
						buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=60 : canmovR=700
						figure=0 : BOSSD=0 : life=100 : stmn=1000 : stun=0 : filterR=0 : deadpat=0
						throw=0
						throwout=0 : throwp=0 : thgrand=0 : thdown=0 : throwhit=0 : beruhit=0 : beruhunt=0 : beruhunt2=0 : poison=0	
						bossmode=0
						repeat enam
							kuthill.cnt=0
							loop
							repeat enam
							ehit.cnt=0
							en.cnt=0
							hittrap.cnt=0
							hitwarm.cnt=0
							hitpira.cnt=0
							kumopos.cnt=0
							loop
							repeat enam*4
							kumoito.cnt=0
							ito.cnt=0
							loop
						gosub *mapmov
						map=43 : scl=0 : gkr=0 : deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : stunoff=0 : posdead=0
						restart=1 : font "�l�r �S�V�b�N",30
						return
					}
					if (BOSSE=1)|(lustlast=1) {
						point=200 : ev32=0 : ev33=0
						itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
						item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
						lustturn=0 : lustlast=0 : lustlimit=0 : lustmode=0 : lustatk=0 : lustbrits=0 : lustact=0 : acid1=0 : acid2=0 : acid3=0 : lust_on=0
						lustdam=0 : eqhit=0  : lustatari=0 : EballhitA=0 : EballhitB=0
						if stockr>0
						repeat stockr
						potion=-1: gosub *getdrag
						loop
						if stockb>0
						repeat stockb
						potion=-2: gosub *getdrag
						loop
						itemnam=11 : gosub *getitem
						itemnam=0
						now_equip=0 : equipA=0
						item_used=101 : item_del=1 : gosub *useitems : gosub *useitem
						item_used=0
						using=0
						buffer 5 : picload "pass20a.bmp" : gsel 0
						figure=0
						gkr=0
						dir=0 : fatalst=0 : slow=0
						buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
						mapsizeX=1200 : mapsizeY=600 : mappos=0 : canmovL=-30 : canmovR=585
						map=67 : scl=1 : sclp=0 : sclM=400 : gendo=-400
						figure=0 : BOSSE=0 : life=100 : stmn=1000 : stun=0 : filterR=0 : deadpat=0
						bossmode=0
						repeat enam
							kuthill.cnt=0
							loop
							repeat enam
							ehit.cnt=0
							en.cnt=0
							hittrap.cnt=0
							hitwarm.cnt=0
							hitpira.cnt=0
							kumopos.cnt=0
							loop
							repeat enam*4
							kumoito.cnt=0
							ito.cnt=0
							loop
						gosub *mapmov
						gkr=0 : deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : stunoff=0 : posdead=0
						restart=1 : font "�l�r �S�V�b�N",30
						return
					}
					if (BOSSF=1)|(beruhiru=1) {
						point=300 : ev36=0
						itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
						item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0 : drag2.4=0
						lustturn=0 : lustlast=0 : lustlimit=0 : lustmode=0 : lustatk=0 : lustbrits=0 : lustact=0 : acid1=0 : acid2=0 : acid3=0 : lust_on=0
						lustdam=0 : eqhit=0  : lustatari=0 : EballhitA=0 : EballhitB=0
						if stockr>0
						repeat stockr
						potion=-1: gosub *getdrag
						loop
						if stockb>0
						repeat stockb
						potion=-2: gosub *getdrag
						loop
						itemnam=0
						item_used=0
						using=0
						buffer 5 : picload "room47a.bmp" : gsel 0
						figure=0
						gkr=0
						dir=1 : fatalst=0 : slow=0
						buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
						mapsizeX=800 : mapsizeY=600 : mappos=0 : canmovL=-10 : canmovR=660
						map=83 : scl=0
						figure=0 : BOSSF=0  : beruhiru=0 : life=100 : stmn=1000 : stun=0 : filterR=0 : deadpat=0
						bossmode=0 : deadslaim=0 : slaimnum=0 : floanum=0
						repeat enam
							kuthill.cnt=0
							loop
							repeat enam
							ehit.cnt=0
							en.cnt=0
							hittrap.cnt=0
							hitwarm.cnt=0
							hitpira.cnt=0
							kumopos.cnt=0
							hitmama.cnt=0
							hithill.cnt=0
							hitkuti.cnt=0
							hitdog.cnt=0
							hitjairo.cnt=0
							hitmama2.cnt=0
							hitslaim.cnt=0
							loop
							repeat 5
							hitsizuku.cnt=0
							loop
							repeat enam*4
							kumoito.cnt=0
							ito.cnt=0
							loop
						gosub *mapmov
						gkr=0 : deadwait=0  : poshill=0 : posses=0 : hitsla=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : stunoff=0 : posdead=0
						restart=1 : font "�l�r �S�V�b�N",30
						return
					}
					if BOSSG=1 {
						point=290 : dir=1 : ev47=0
						buffer 5 : picload "pass28a.bmp" : gsel 0
						mapsizeX=1200 : mapsizeY=600 : mappos=-290 : canmovL=70 : canmovR=800
						if drag2.6=0 : mapitem=1 : itemx=-90 : itemy=440 : Icolor=8
						figure=0
						gosub *mapmov
						rusi_tatk_v_hit=0 : rusi_tatk_h_hit=0
						map=106 : scl=1 : sclp=290 : sclM=400 : gendo=-400
						itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
						item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
						rusipos=0
						rusi_tf1=0,rusi_tf2=0,rusi_tf2x=0,rusi_tf3=0,rusi_tf3x=0,rusi_tatk_v_on=0,rusi_t_atkoff=0 : icep=0 : eqhit=0 : eqatkp=0
						rusi_tf4=0,rusi_tf4x=0,rusi_tatk_v_on=0,rusi_tatk_h_on=0,rusi_tjump=0,rusi_tatk_v=0,rusi_tatk_h=0,rusi_tatk_v_hit=0,rusi_tatk_h_hit=0
						rusi_tjumpoff=0,rusi_ttyaku=0,rusi_tsyoku=0,rusi_ueatack_on=0,rusi_uekaraburi=0 : rusi_tjump_hit=0
						rusi_tf5=0,rusi_tf5x=0,rusi_tf6=0,rusi_tf6x=0,rusi_tf7=0,rusirakka=0,rusi_tf8=0,rusifall=0
						rusi_tr9=0,rusi_tf9x=0,rusityakuti=0 : rusi_tsyoku1_on=0 : rusi_tsyoku2_on=0 : rusi_tsyoku3_on=0 : deadflame=0 : hunsai=0 : deadpat2=0 : rusi_tsyoku1_hit=0 : rusi_tsyoku2_hit=0 : rusi_tsyoku3_hit=0

						undidam=0 : saradam=0 : rusidam=0

						rusi_tp5=0 : rusi_tp6=0

						now_equip=0 : equipB=0 : equipC=0 : equipatk=0
						eqhit=0
						
						itemnam=16 : gosub *getitem
						itemnam=15 : gosub *getitem
						itemnam=14 : gosub *getitem
						itemnam=0
						if stockr>0
						repeat stockr
						potion=-1: gosub *getdrag
						loop
						if stockb>0
						repeat stockb
						potion=-2: gosub *getdrag
						loop
						if stocky>0
						repeat stocky
						potion=-3: gosub *getdrag
						loop
						item_used=0
						using=0
						figure=0
						gkr=0
						dir=0 : fatalst=0 : slow=0
						buffer 2 : picload "setacore.bmp" : buffer 3 : picload "setbcore.bmp"  : gsel 0
						figure=0 : BOSSG=0  : beruhiru=0 : life=100 : stmn=1000 : stun=0 : filterR=0 : deadpat=0
						bossmode=0
						repeat enam
							kuthill.cnt=0
							loop
							repeat enam
							ehit.cnt=0
							en.cnt=0
							hittrap.cnt=0
							hitwarm.cnt=0
							hitpira.cnt=0
							kumopos.cnt=0
							hitmama.cnt=0
							hithill.cnt=0
							hitkuti.cnt=0
							hitdog.cnt=0
							hitjairo.cnt=0
							hitmama2.cnt=0
							hitslaim.cnt=0
							loop
							repeat 5
							hitsizuku.cnt=0
							loop
							repeat enam*4
							kumoito.cnt=0
							ito.cnt=0
							loop
						gosub *mapmov
						gkr=0 : deadwait=0  : poshill=0 : posses=0 : hitsla=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : stunoff=0 : posdead=0
						restart=1 : font "�l�r �S�V�b�N",30
						return
					}
					if BOSSH=1 {
						if nikuhen=1{
						itaip=0 : itaip2=0 : hanteikyohi=1 : gkryobi=1 : gkr2=0
						color 0,0,0 : boxf 0,0,800,600 : color 255,0,0
						repeat
						redraw 0
						if itaip2=0 {
							if itaip>=5 : itaip=-1 : pos rnd(700),rnd(500) : font "�l�r ����",200 : mes "��" : itaip2+
							itaip+
						}
						if (itaip2>0)&(itaip2<=30){
							if itaip>=5 : itaip=-1 : pos -10+rnd(770),-10+rnd(570) : font "�l�r ����",100+rnd(70) : mes "��" : itaip2+
							itaip+
						}
						if itaip2>30{
							if itaip=5 : pos -10+rnd(770),-10+rnd(570) : font "�l�r ����",30+rnd(70) : mes "�C�^�C" : itaip=-1
							itaip+
						}
						redraw 1
						getkey gkryobi,82
						if gkryobi=0 : hanteikyohi=0
						if hanteikyohi=0{
							gkr2=0
							getkey gkr2,82
						}
						if gkr2=1 : break
						await 1
						loop
						gkryobi=1
						hanteikyohi=1
						gkr2=0
						redraw 0 : pos 0,0 : gmode 3,,,160 : gcopy 70,0,0,800,600 : redraw 1
						repeat
						getkey gkryobi,82
						if gkryobi=0 : hanteikyohi=0
						if hanteikyohi=0{
							gkr2=0
							getkey gkr2,82
						}
						if gkr2=1 : break
						await 1
						loop
						}
						nikuhen=0
						color 255,255,255
						point=650 : dir=1 : ev50=0
						buffer 5 : picload "passlast.bmp" : gsel 0
						mapsizeX=3000 : mapsizeY=600 : mappos=-1000 : canmovL=70 : canmovR=800
						figure=0
						gosub *mapmov
						map=122 : scl=0
						itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
						item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
						leas_mp=0 : leasact=0 : leasact5=0 : leasact7=0 : leasfy1=0  : leasfy5=0 : leas_rayA=0 : leas_rayB=0 : deathball=0 : leasgrav=0 : gravhit=0 : deathball_on=0 : deathballhit=0
						orb=0 : haveorb=0 : mana=0 : orbt=0
						poscubesam=0
						itemnam=16 : gosub *getitem
						itemnam=0
						if stockr>0
						repeat stockr
						potion=-1: gosub *getdrag
						loop
						if stockb>0
						repeat stockb
						potion=-2: gosub *getdrag
						loop
						if stocky>0
						repeat stocky
						potion=-3: gosub *getdrag
						loop
						item_used=0
						using=0
						figure=0
						gkr=0
						fatalst=0 : slow=0
						buffer 2 : picload "setacore.bmp" : buffer 3 : picload "setbcore.bmp"  : gsel 0
						figure=0 : BOSSH=0 : life=100 : stmn=1000 : stun=0 : filterR=0 : deadpat=0
							bossmode=0
							repeat enam
							leascube.cnt=0
							leasball.cnt=0
							leasneedle.cnt=0
							leasballx.cnt=0.0
							leasbally.cnt=0.0
							leasneedlex.cnt=0.0
							leasneedley.cnt=0.0
							leascubex.cnt=0
							leascubep.cnt=0
							leascubedir.cnt=0
							leasball_on.cnt=0
							leasneedle_on.cnt=0
							leasneedle2_on.cnt=0
							leasballdir.cnt=0
							leasballdiry.cnt=0
							leasballdirx.cnt=0
							poscube.cnt=0
							hitleasball.cnt=0
							hitleasneedle.cnt=0
							loop
						gosub *mapmov
						gkr=0 : deadwait=0  : poshill=0 : posses=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : stunoff=0 : posdead=0
						restart=1 : font "�l�r �S�V�b�N",30
						return
					}
					if stage=2 {
						ev5=0 : ev6=0 : ev8=0 : ev9=0
						itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
						itemA=0 : itemB=0 : itemC=0 : itemD=0 : itemE=0 : itemF=0 : itemG=0 : itemH=0 : itemI=0
						item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
						repeat enam
						ehit.cnt=0
						en.cnt=0
						hittrap.cnt=0
						loop
						repeat enam*4
						kumoito.cnt=0
						ito.cnt=0
						loop
						repeat enam
						drag1.cnt=0
						drag2.cnt=0
						loop
						muteki=1 : life=100 : stmn=1000
						settrap=0
						gkr=0
						figure=0 : mapitem=0 : filterR=0 : cantstand=0 : stun=0 : press=0 : posdead=0 : scl=0 : deadpat=0
						if satan_bast=1 : ev5=1 : ev6=1 : ev8=1 : itemA=1 : itemB=1 : itemC=1 : itemD=1 : itemE=1 : itemnam=3: gosub *getitem
						buffer 5 : picload "room5a.bmp" : gsel 0
						buffer 10 : picload "room5b.bmp" : gsel 0
						buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
						point=300 : dir=0 : fx=0 : fdx=740
						figure=0
						canmovL=70 : canmovR=590
						map=8
						mapsizeX=800 : mapsizeY=600 : mappos=0
						deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : posdead=0
						gosub *mapmov
						restart=1 : alert=0 : rusi_on=0 : font "�l�r �S�V�b�N",30
						return
					}
					if stage=3 {
						if rusiact=0 : ev19=0
						if itemG=0 { 
							ev16=0
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							itemF=0 : itemG=0 : itemH=0 : itemI=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room15a.bmp" : gsel 0 : map=21
							canmovL=-30 : canmovR=800
							point=300
						}
						if (itemG=1)&(ev13=0) { 
							ev20=0 : ev21=0
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							itemH=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							mapitem=0
							itemnam=7: gosub *getitem
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room15a.bmp" : gsel 0 : map=21
							canmovL=-30 : canmovR=800
							point=300
						}
						if (itemG=1)&(ev13=1)&(ev17=0) { 
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							itemH=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room16b.bmp" : gsel 0 : map=24
							canmovL=70 : canmovR=800
							point=300
						}
						if (itemG=1)&(ev17=1) { 
							ev20=0 : ev21=0 : ev22=0
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room16b.bmp" : gsel 0 : map=24
							canmovL=70 : canmovR=800
							point=300
						}
						if 	itemII=1 { 
							ev20=0 : ev21=0
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							itemnam=9: gosub *getitem
							if drag1.2=0 : mapitem=1 : itemx=215 : itemy=440 : Icolor=24 : else : mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room24b.bmp" : gsel 0 : map=43
							canmovL=-30 : canmovR=800
							point=300
						}
						hiding=0 : rusimiss=0
						stun=0 : stunoff=0 : hitkro=0
						fatalst=0 : slow=0
						throw=0 : thpower=0 : throw_on=0 : stunoff=0 : faceoff=0
						poshill=0
						posbag=0
						muysimusi=0
							repeat enam
							kuthill.cnt=0
							loop
							repeat enam
							kutbag.cnt=0
							hitbag.cnt=0
							loop
							repeat enam
							ehit.cnt=0
							en.cnt=0
							hittrap.cnt=0
							hitwarm.cnt=0
							hitpira.cnt=0
							loop
							repeat enam*4
							kumoito.cnt=0
							ito.cnt=0
							loop
							muteki=1 : life=100 : stmn=1000
							settrap=0
							throw=0
							throwout=0 : throwp=0 : thgrand=0 : thdown=0 : throwhit=0
							gkr=0 : nure=0 : kawaki=0 : mapwater=0
							figure=0 : mapitem=0 : filterR=0 : cantstand=0 : stun=0 : press=0 : posdead=0 : scl=0 : deadpat=0
							buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
							dir=0 : fx=0 : fdx=740
							figure=0
							mapsizeX=800 : mapsizeY=600 : mappos=0
							deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : posdead=0
							gosub *mapmov
							restart=1 : alert=0 : rusi_on=0 : font "�l�r �S�V�b�N",30
							return
					}
					if stage=4 {
						if ev26=0 { 
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							itemL=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room30a.bmp" : gsel 0 : map=49
							canmovL=70 : canmovR=800
							point=100 : dir=1
						}
						if (ev28=0)&(ev26=1) { 
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							itemJ=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room30a.bmp" : gsel 0 : map=49
							canmovL=70 : canmovR=800
							point=100 : dir=1
						}
						if (ev28=1)&(vsasmo=0) { 
							ev29=0 : ev31=0 : ev30=0
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							itemK=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room35a.bmp" : gsel 0 : map=64
							canmovL=70 : canmovR=800
							point=100 : dir=0
						}
						if (vsasmo=1) { 
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							if ev33=0 : itemnam=11 : gosub *getitem
							buffer 5 : picload "room36a.bmp" : gsel 0 : map=57
							canmovL=70 : canmovR=800
							point=300
						}
						from61=0
						from58=0
						mitana=0
						hiding=0 : rusimiss=0
						stun=0 : stunoff=0 : hitkro=0
						fatalst=0 : slow=0
						throw=0 : thpower=0 : throw_on=0 : stunoff=0 : faceoff=0
						poshill=0
						posbag=0
						muysimusi=0
							repeat enam
							kuthill.cnt=0
							loop
							repeat enam
							kutbag.cnt=0
							hitbag.cnt=0
							loop
							repeat enam
							ehit.cnt=0
							en.cnt=0
							etype.cnt=0
							hittrap.cnt=0
							hitwarm.cnt=0
							hitpira.cnt=0
							loop
							repeat enam*4
							kumoito.cnt=0
							ito.cnt=0
							loop
							muteki=1 : life=100 : stmn=1000
							settrap=0
							throw=0
							throwout=0 : throwp=0 : thgrand=0 : thdown=0 : throwhit=0
							gkr=0 : nure=0 : kawaki=0 : mapwater=0
							figure=0 : mapitem=0 : filterR=0 : cantstand=0 : stun=0 : press=0 : posdead=0 : scl=0 : deadpat=0
							buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
							dir=0 : fx=0 : fdx=740
							figure=0
							mapsizeX=800 : mapsizeY=600 : mappos=0
							deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : posdead=0
							gosub *mapmov
							restart=1 : alert=0 : rusi_on=0 : font "�l�r �S�V�b�N",30
							return
					}
					if stage=5 {
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							itemM=0 : ev37=0
							mapitem=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							loop
							buffer 5 : picload "room42a.bmp" : gsel 0 : map=75
							canmovL=35 : canmovR=240
							point=150
						stun=0 : stunoff=0 : hitkro=0
						fatalst=0 : slow=0
						throw=0 : thpower=0 : throw_on=0 : stunoff=0 : faceoff=0
						poshill=0
						posbag=0
						muysimusi=0
							repeat enam
							kuthill.cnt=0
							loop
							repeat enam
							kutbag.cnt=0
							hitbag.cnt=0
							loop
							repeat enam
							ehit.cnt=0
							en.cnt=0
							etype.cnt=0
							hittrap.cnt=0
							hitwarm.cnt=0
							hitpira.cnt=0
							hitkuti.cnt=0
							hitmama.cnt=0
							hitjairo.cnt=0
							hitdog.cnt=0
							loop
							repeat enam*4
							kumoito.cnt=0
							ito.cnt=0
							loop
							muteki=1 : life=100 : stmn=1000
							settrap=0
							throw=0
							throwout=0 : throwp=0 : thgrand=0 : thdown=0 : throwhit=0
							gkr=0 : nure=0 : kawaki=0 : mapwater=0
							figure=0 : mapitem=0 : filterR=0 : cantstand=0 : stun=0 : press=0 : posdead=0 : scl=0 : deadpat=0
							buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
							dir=1 : fx=0 : fdx=740
							figure=0
							mapsizeX=800 : mapsizeY=600 : mappos=0
							deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : posdead=0
							figure=1
							gosub *mapmov
							restart=1 : alert=0 : rusi_on=0 : font "�l�r �S�V�b�N",30
							etype.0=13
							enx.0=650
							endir.0=1
							estun.0=50
							return
					}
					if stage=6 {
							itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
							item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
							deadflame=0 : deadfreez=0
							mapitem=0
							itemnam=16 : gosub *getitem
							if ((ev41=1)|(ev46=1))&(ev48=0) : itemnam=15 : gosub *getitem : itemnam=0
							if ((ev42=1)|(ev45=1))&(ev48=0) : itemnam=14 : gosub *getitem : itemnam=0
							if ev48=1 : itemnam=17 : gosub *getitem
							itemnam=0
							repeat enam
							drag1.cnt=0
							drag2.cnt=0
							drag3.cnt=0
							loop
							point=630
						buffer 5 : picload "pass25a.bmp" : gsel 0
						mapsizeX=1200 : mapsizeY=600 : mappos=-400 : canmovL=70 : canmovR=800
						if drag1.8=0 : mapitem=1 : itemx=-230 : itemy=440 : Icolor=24
						figure=0
						map=99 : scl=1 : sclp=400 : sclM=400 : gendo=-400
						stun=0 : stunoff=0 : hitkro=0
						fatalst=0 : slow=0
						throw=0 : thpower=0 : throw_on=0 : stunoff=0 : faceoff=0
						poshill=0
						posbag=0
						muysimusi=0
							repeat enam
							kuthill.cnt=0
							loop
							repeat enam
							kutbag.cnt=0
							hitbag.cnt=0
							loop
							repeat enam
							ehit.cnt=0
							en.cnt=0
							etype.cnt=0
							hittrap.cnt=0
							hitwarm.cnt=0
							hitpira.cnt=0
							hitkuti.cnt=0
							hitmama.cnt=0
							hitjairo.cnt=0
							hitdog.cnt=0
							loop
							repeat enam*4
							kumoito.cnt=0
							ito.cnt=0
							loop
							muteki=1 : life=100 : stmn=1000
							settrap=0
							throw=0
							throwout=0 : throwp=0 : thgrand=0 : thdown=0 : throwhit=0
							gkr=0 : nure=0 : kawaki=0 : mapwater=0
							figure=0 : filterR=0 : cantstand=0 : stun=0 : press=0 : posdead=0 : deadpat=0
							buffer 2 : picload "setacore.bmp" : buffer 3 : picload "setbcore.bmp"  : gsel 0
							dir=1 : fx=0 : fdx=740
							figure=0
							deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : posdead=0
							figure=1
							gosub *mapmov
							restart=1 : alert=0 : rusi_on=0 : font "�l�r �S�V�b�N",30
							return
					}
					ev1=0 : ev2=0 : ev3=0
					itemnam=0 : box1=0 : box2=0 : box3=0 : box4=0 : box5=0 : box6=0 : box7=0
					itemA=0 : itemB=0 : itemC=0 : itemD=0 : itemE=0 : itemF=0 : itemG=0 : itemH=0 : itemI=0
					item1=0 : item2=0 : item3=0 : item4=0 : item5=0 : item6=0 : item7=0
					repeat enam
					ehit.cnt=0
					en.cnt=0
					hittrap.cnt=0
					loop
					repeat enam*4
					kumoito.cnt=0
					ito.cnt=0
					loop
					muteki=1 : life=100 : stmn=1000
					settrap=0 : gkr=0
					figure=0 : mapitem=0 : filterR=0 : cantstand=0 : stun=0 : press=0 : posdead=0 : scl=0 : deadpat=0
					buffer 5 : picload "room1a.bmp" : gsel 0
					buffer 2 : picload "seta.bmp" : buffer 3 : picload "setb.bmp"  : gsel 0
					point=400 : dir=0 : fx=0 : fdx=740
					figure=0
					canmovL=70 : canmovR=590
					map=1
					mapsizeX=800 : mapsizeY=600 : mappos=0
					deadwait=0 : posses=0 : hitmog=0 : faceoff=0 : redfeed=0 : deadx=0 : dead=0 : posdead=0
					gosub *mapmov
					restart=1 : font "�l�r �S�V�b�N",30
				}
				return
					
					
					
					
				
stop
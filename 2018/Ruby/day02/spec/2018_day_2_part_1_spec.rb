require './2018_day_2_part_1'



describe "2018_day_2_part_1" do
  
    before :each do
        @inventory_manager = InventoryManager.new
    end
    
    it "should not be nil" do
      expect(@inventory_manager).not_to be_nil
    end
    
    it "should return count as 0 for abcdef" do
      @inventory_manager.set_input "abcdef"
      expect(@inventory_manager.two_count).to eq 0
      expect(@inventory_manager.three_count).to eq 0
    end
    
    it "should return two_count as 1 and three_count as 1 for bababc" do
      @inventory_manager.set_input "bababc"
      expect(@inventory_manager.two_count).to eq 1
      expect(@inventory_manager.three_count).to eq 1
    end
    
    
    it "should return two_count as 1 and three_count as 0 for abbcde" do
      @inventory_manager.set_input "abbcde"
      expect(@inventory_manager.two_count).to eq 1
      expect(@inventory_manager.three_count).to eq 0
    end
    
    it "should return two_count as 0 and three_count as 1 for abcccd" do
      @inventory_manager.set_input "abcccd"
      expect(@inventory_manager.two_count).to eq 0
      expect(@inventory_manager.three_count).to eq 1
    end


    it "should return two_count as 1 and three_count as 0 for aabcdd" do
      @inventory_manager.set_input "aabcdd"
      expect(@inventory_manager.two_count).to eq 1
      expect(@inventory_manager.three_count).to eq 0
    end
    
    it "should return two_count as 1 and three_count as 0 for abcdee" do
      @inventory_manager.set_input "abcdee"
      expect(@inventory_manager.two_count).to eq 1
      expect(@inventory_manager.three_count).to eq 0
    end  
    
    it "should return two_count as 0 and three_count as 1 for ababab" do
      @inventory_manager.set_input "ababab"
      expect(@inventory_manager.two_count).to eq 0
      expect(@inventory_manager.three_count).to eq 1
    end    
    
    it """should return checksum as 12 for abcdef
        bababc
        abbcde
        abcccd
        aabcdd
        abcdee
        ababab""" do
        input = """abcdef
          bababc
          abbcde
          abcccd
          aabcdd
          abcdee
          ababab"""
          @inventory_manager.set_input input
          expect(@inventory_manager.two_count).to eq 4
          expect(@inventory_manager.three_count).to eq 3
  end
  
  it """should return checksum as 246 for program input""" do
      input = """jiwamotqgcfnudclzbyxkzmrvp
jiwamotqgsfnidcvzpyxkhervp
jiwamotqgsqnjdclzbyxkaervp
jiwamotqgsvnudclzbvikhervp
jiwamotqgjfnuqclzbyxkhemvp
jifamotqgsfnudclzbyxohecvp
jiwamotqssfnudclzjyxkhekvp
jiramotqgsfnudclzbyxztervp
jiwamotqgsfnuddozbyxjhervp
jiwamohqgsfntdclzxyxkhervp
jfwamobqgsfnudzlzbyxkhervp
fiwamotqgsfnudcfzbyfkhervp
jiwamothgsonudclzbyxkhcrvp
jinamojqgsftudclzbyxkhervp
jiwamotbgsfnudclzpyxchervp
wiwaiotqgsfnudhlzbyxkhervp
jiwamotqgsfktdclzbyxlhervp
jimamokqgsfnudclzbyokhervp
jiwqmotqgyfnudcdzbyxkhervp
ziwvmotqgsfnusclzbyxkhervp
jiwamotqgsfnuzclpbyxkherip
jiwumotqgsfnudclzgyxkhedvp
jiwomocqgsfnudylzbyxkhervp
jtwamotqgxfnudwlzbyxkhervp
jiwamotqgsfnudclzbnvkherva
jiwaxoeqgsfnsdclzbyxkhervp
jiwamotqgsrnudclzbyxkoekvp
jiwamotqgsfnudclzbynkhorvr
jiwavotqgsfxudclzbmxkhervp
jiwamotqksfnudcvzbytkhervp
qiwamotqgsfnadwlzbyxkhervp
jiwamctqgsfnwdclzhyxkhervp
jiwamotqggfnudclzbyxqwervp
jiwamdtqgslnurclzbyxkhervp
jiwamozqgsfnupclobyxkhervp
jiwamotqgtfnudcbzbypkhervp
jiwnmotqgsfnudclmbybkhervp
jihamotqgsfnudclzbyxkhsivp
jiwamotqgsfcudclzbyxkxervz
jiwamotqgsfhwdclzbyxkfervp
jivamotqgsfnudclzbixkpervp
jiwamotagsfrudclzbyzkhlrvp
jiwamotqgsfnudclzbdxkhbrvh
jfwamotsasfnudclzbyxkhervp
jiwrmotqgsfnudclzbyxgherkp
jiwomotqisfnudcbzbyxkhervp
jiermotqgsfjudclzbyxkhervp
jiwamotqgsfeudcpzbyxkmervp
jxwpmotqgsfnufclzbyxkhervp
jiwamotqgsfnunclzpyxkhecvp
jpwamotqvsfnudclzbyxkhprvp
jimamothgsfnudclzbjxkhervp
jiwamotqgsfnudclzbybkhewvc
jiwqmotqgsfnudclzbyrkheovp
jiwapotqgsfnudblzbyxkhsrvp
jiwhmotqgsfaudclzbyakhervp
jiqamotjgsfnudclzbyxphervp
jiwamotqgsfnudklzbyeghervp
jowamotqgsfnudcljbyxshervp
jiwamotxgkfnudclzbyskhervp
jifamotqgsfnudclzbyxklprvp
jiwamotqgsfnudclzbghkherep
jiwamotygsfnudcezbyxkheovp
jiwmmhtqgsfnudclzhyxkhervp
fiwxmotqgsfnudclzbwxkhervp
jvwapotwgsfnudclzbyxkhervp
jiwamodqgsfnudcizbtxkhervp
jiwamotqgsfnhnclzbyxkwervp
jiwsmozqgsfnudclzbyxkwervp
jwwamotqgsxnudclzbyxkpervp
jiwamotqgsftudclzbcckhervp
jiwaootqgnfnudclzbrxkhervp
aicamotqgsfnudclzbyxklervp
jilamolqgsfnudclzbyxknervp
jiwamotqgqftudcczbyxkhervp
jiwmmntqgsfnudclzbyxkhewvp
dxwamotqgsfnudclzbyxkhervn
imwamotqgsfnudclzbyxkhervv
jiwammtqgsfnudcrzsyxkhervp
jiwamojqgsznuuclzbyxkhervp
bisamotqgsqnudclzbyxkhervp
jiwaootqksfyudclzbyxkhervp
jiwamotqgscnudclzbyskhervs
jiwamltqgsfnudhlzbyxkhervh
jiwemotggsfnuuclzbyxkhervp
jiwamotqgsfnudclzbexkheoxp
jiwayotqgfffudclzbyxkhervp
jywamotqgsftudclzbyxkherxp
viwamotqgdfnudcfzbyxkhervp
jioamotvgsfnudclwbyxkhervp
jiwomotqgsflurclzbyxkhervp
jiwamotqgsfnudclzbyckhernh
jiwarobqosfnudclzbyxkhervp
jiwamotqgsfnudclbbyzkkervp
jiwamvtqgsfwudclzbyxkhetvp
jtwavotdgsfnudclzbyxkhervp
jiwamotqzsjnydclzbyxkhervp
jiwamotqgsfnrdctzbyxkxervp
jiwamotqgsfnudclzbyxehezyp
jiwamftqgsfcudclqbyxkhervp
jiwnmotqgssnudclzbyxkherbp
jidgmotqgsfnbdclzbyxkhervp
biwamotqgnfnudclzbyxkhervc
jizamotqxffnudclzbyxkhervp
jiwamztqgsfnudclzbyxkhevvi
jmwamotqgsfnudclzbtwkhervp
jxwamotqgsfkudchzbyxkhervp
jiwamotqgspqudclzbyxkhervl
jiyagoxqgsfnudclzbyxkhervp
jawamotqgsfnudllzbyxkhervr
jfwamotqgsxnudclzbyxklervp
juaametqgsfnudclzbyxkhervp
jiwamotqgsfnudcrybyxkhnrvp
jiwamotqgsfnudclfbmxkheovp
jiwamotqgsfnukclzbykkhervz
jwwamztqgsfnudclzbyxkhervt
jiwamotqgsbnudclzbyxkhkrvu
jewamotqgsfnuqclzbyxkherve
jiwamotqgsfntdblrbyxkhervp
jiwamotqgsfoudclzbyxcherwp
jiwamopqgscnudclzbyxkhrrvp
jiwamotqosfnudclkbyxyhervp
jiwamotqysfnudclzbyxqhermp
jiwamotqgsfnuscbzbyzkhervp
jiwamotqgofnudflgbyxkhervp
jvwamotqgefnydclzbyxkhervp
jjwamotqgsfnudclzbkxkhetvp
jiwasctqcsfnudclzbyxkhervp
jiwamotqgsfnudcqzbyxkherxf
jiwamotqgsgnudclzbtxkherip
jiwamotqksfnudflzbyxkhervf
jixamotqgsfnudclzbyxklerzp
jkwamatqgsfnudcmzbyxkhervp
wiwamotqcsfnudclzbyxkhervu
jiwahotqgsfnudclzbyxqjervp
juhamotqdsfnudclzbyxkhervp
jiwamotqqsfnudclzryxkherfp
vfwazotqgsfnudclzbyxkhervp
jicamoaqgsfnudclzbyxkherup
jiwqmogqxsfnudclzbyxkhervp
xiwamotqgsfnudclybyxkhurvp
jiwamitqgssnudclzbpxkhervp
jiwamotqgstnudqlzbyxkhrrvp
jiwamctqgsfnuwclzbfxkhervp
jiwzmotqgsfnuhclzbyxkhwrvp
hiwamotqgsfmudclzbykkhervp
jiwamotqgsrnudclzbyxohnrvp
jswametqgsfcudclzbyxkhervp
jiwamotqgsfsudcazeyxkhervp
jiwamotqgsfnqdctzbyxkherjp
jhwamotqgsfnudclgbyxkhervw
jiwamotqgsxnudglzbyxkhermp
jiwamotqgsfnudclabjxkrervp
jiwamotqbsrnudclpbyxkhervp
jiqamotugsfnudcrzbyxkhervp
jiwamotqgsfnuwdazbyxkhervp
jiwamctqghwnudclzbyxkhervp
siwamotqgsznudclzbyxghervp
jiwamotdgsfrudclcbyxkhervp
jiwamotqgsfnddylzbyxkhelvp
jiwqmotqgjfnudclzbyxkhervd
jiwamotogffvudclzbyxkhervp
jiwawhtqgsfnudclzbyxkhervi
jiwomotqgsfnulclzjyxkhervp
diwamotqgsfnudclzbypkhervk
jiwamotqgsfqtsclzbyxkhervp
jiwgmotqgsfnudcwzbyxkhnrvp
jiwamotqksfnvdclzbyxkherve
jiwamztqgsfnusxlzbyxkhervp
hiwamotqgssnudclibyxkhervp
jiwamotzgsfnudclzbyxxhemvp
jiwamotqgsfrudclzbyzkhlrvp
jiwaaotqgsfnudcazbyxkhervf
jiwadotqgsffudclzbyxkhbrvp
jieamotqgafnudclzbyxknervp
jieamotqgsfnudclzjyxjhervp
jvwamotqglfnudclzbyxkhxrvp
jiwamotqgsfnudcozdyxkhdrvp
riwamocqgsfnudclzbtxkhervp
jiwawitqgsfnudclzbyxkhlrvp
giwamotqgsfvudclzayxkhervp
jiwamotqgsfnddcjzjyxkhervp
jiwamotpgrfnxdclzbyxkhervp
jiwamotkgnfnubclzbyxkhervp
jiwamokqgsfnukclzbyxkservp
jiwamotqgyfnudzlqbyxkhervp
jiwamotqgsonudclzbyxhhwrvp
iiwamotqgsfnudclzbvxkhemvp
jxwamotogsfnudclzbyxkhervh
jiwkmocqgsfnudclzbyxkhervg
jiwymotzgsfnudclvbyxkhervp
jiwatotqgsfaudcvzbyxkhervp
jiwamotkgsfnudclzbyckhsrvp
jiwamotqgsfiuyklzbyxkhervp
jiwamotqgsfnudclzmyakiervp
jiwamotqgsfnidcyzbyxfhervp
jiwakotqgsfnudclzbaukhervp
jixadotqgsfnudglzbyxkhervp
jiwamotqnsfnudclrbyxkhemvp
jiwamotqgsfnhdtlzbyxuhervp
jiwamotqlsfnudcyzbyxkhervu
jiwamotqgsfnuxclxbyxkheryp
jiwamotqgafnudflhbyxkhervp
jicamotqgsfnufcqzbyxkhervp
jiwamotqgsmnudcszbyxfhervp
jiwamotqgsfnudclzryxkjekvp
jiwamocqgsfnudflzayxkhervp
jiwomotqgsfaudclzkyxkhervp
niwamoaqgsfnuyclzbyxkhervp
jiwamogqdsfnudcvzbyxkhervp
jiwamotbgsfnudclhbyxehervp
jiwamdtqgsfnudclzbyxdhergp
jiwamotqgofnudclzbyxkhcrjp
jhfamotqgsfnudclzbyxkherjp
jiwqmotqgsfkudclzbixkhervp
jdfametqgsfnudclzbyxkhervp
jioamotqgrfnudclzbqxkhervp
jiwamotqgornudclzbyxkheavp
jlwarotqgsfbudclzbyxkhervp
jiwamyyqgsfnudclzbyxkhorvp
piwamotqgsfnudclnbmxkhervp
jiwvmotqgsfnudnlzbyxshervp
jiwamotqjsfnudclzbytkhenvp
wswamotqgsfnudcfzbyxkhervp
jiwamotqgsftddclrbyxkhervp
jiwamytqgsfnudclzbyxkhwrzp
jiwamotqgsfnudcbzayxkmervp
jiykmokqgsfnudclzbyxkhervp
jiwamotqqsxnudclzbixkhervp
jiwamotqgsfnubclzboxihervp
jiwsmottgsfnudclzbrxkhervp
jiwamotqgsfnudcgzbexkherjp
juwamotqgsfnudclzcyvkhervp
jiwamotqglfcudcdzbyxkhervp
jiwamotqgsftudclzbynkhevvp
jiwamotdlzfnudclzbyxkhervp
jiwamohqgsfnuyclzbyxkhervk
jiwamodygsanudclzbyxkhervp
jiwamotqgsfnujclzbyxrhewvp
jicamotqgsfnudcmzbyhkhervp
jiwamvtqgvfnudclzayxkhervp
jiwamotqgsfnuzclzfyxkhevvp
jiwafotqgsfnudcejbyxkhervp
jiwamomqgyfnudclzbyzkhervp
jiqamorqgsfnudclqbyxkhervp
jiwamotqgsfpudclzbyxkkvrvp
jiwamotqgsfnuiclzbyxhherfp
jiwagotqgsfoudclzbyxkdervp
jiwamotmgmfnudclzbyxkhermp
jltamotqgsfnudctzbyxkhervp"""
        @inventory_manager.set_input input
        expect(@inventory_manager.two_count).to eq 246
        expect(@inventory_manager.three_count).to eq 24
end
    
    
end  
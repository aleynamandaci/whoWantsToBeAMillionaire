//
//  QuizBrain.swift
//  Who Wants To Be A Millionaire
//
//  Created by Aleyna Mandacı on 28.05.2022.
//

import Foundation

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    var randomNum = Int.random(in: 0...9)
    
    let question1 = [
        Question(q: "Açılış törenlerine veya düğünlere katılamayan kişiler genellikle ne gönderirler?", a: ["Çelenk","Meyve Tabağı","İstek şarkı", "Çek"], correctAnswer: "Çelenk"),
        Question(q: "“Kıpırdamayın, çekiyorum, çekiyorum, çektim” diyen kişi muhtemelen kimdir?", a: ["Ressam","Dişçi","Niyetçi","Fotoğrafçı"], correctAnswer: "Fotoğrafçı"),
        Question(q: "El ve yüz temizliğinde kullanılan, nemlendirilmiş, hoş kokulu “kolonyalı” mendilleri için kullanılan diğer ifade hangisidir?", a: ["Islak","Kokulu","Sulu","Nemli"], correctAnswer: "Islak"),
        Question(q: "Uzun süreli bekleyişin sonunda istediğini elde eden kişiler için kullanılan “turnayı gözünden vurdu” şeklinde biten sözün başında hangisi söylenir?", a: ["Baktı baktı","Durdu durdu","Ölçtü biçti","Gezdi tozdu"], correctAnswer: "Durdu durdu"),
        Question(q: "“Kendimi de sayayım mı?” şeklinde bir cevap alındıysa, sorulan soru muhtemelen hangisidir?", a: ["Kaça gidiyorsun?","Kaçta gelirsiniz?","En son kaça olur?","Kaç kişisiniz?"], correctAnswer: "Kaç kişisiniz?"),
        Question(q: "Halk arasında kullanılan söze göre hangisi kara gün içindir?", a: ["Ak akçe","Kuru bakır","Acı kahve","Keskin sirek"], correctAnswer: "Ak akçe"),
        Question(q: "Sorduğunuz soruya “Ben de yabancısıyım” cevabını alıyorsanız, muhtemelen hangisini sormuşsunuzdur?", a: ["Hal hatır","Saat","Memleket","Adres tarifi"], correctAnswer: "Adres tarifi"),
        Question(q: "“Çayın daha 5 dakikası var” diyen biri çayla ilgili muhtemelen hangisini söylemek istiyordur?", a: ["Daha demini almadı","Henüz bakkala gelmedi","Tarladan henüz toplanmadı","Paketi bile açılmadı"], correctAnswer: "Daha demini almadı"),
        Question(q: "Anne babalar, küçük çocuklarına hangisini söylerlerse banyo yapmaya gidilecek demektir?", a: ["Düt düt","Atta","Bıcı bıcı","Çuf çuf"], correctAnswer: "Bıcı bıcı"),
        Question(q: "“Baltalar elimizde, uzun ip belimizde” diye başlayan çocuk şarkısında nereye gidildiğinden bahsedilir?", a: ["Denize","Dağa","Mağaraya","Ormana"], correctAnswer: "Ormana")
    ]
    
    let question2 = [
        Question(q: "Halı saha maçlarında hangisi genellikle görülmez?", a: ["Köşe vuruşu","Taç atışı","Serbest vuruş","Penaltı"], correctAnswer: "Taç atışı"),
        Question(q: "Halk arasında kullanılan bir sözde, peynir gemisinin hangisiyle yürümeyeceğinden bahsedilir?", a: ["Lafla","Sözle","Tezahüratla","Gazla"], correctAnswer: "Lafla"),
        Question(q: "Bir nikah öncesinde, gelinin bekar arkadaşları genellikle nereye isimlerini yazarlar?", a: ["Gelinin duvağının içine","Gelin buketinin kenarlarına","Gelinin alnının üstüne","Gelinin ayakkabasının altına"], correctAnswer: "Gelinin ayakkabasının altına"),
        Question(q: "Arkadaşınız size hangisini söylerse, inat ederek yaptığınız bir işin sonucunda kimsenin fayda görmediğini düşünüyor demektir?", a: ["Ne münasebet?","Hiç mi yok?","Başın göğe erdi mi?","Neden ben?"], correctAnswer: "Başın göğe erdi mi?"),
        Question(q: "İnternet sitelerinde yer alan “SSS”nin açılımında, “Sorulan Sorular”dan önce hangi kelime gelir?", a: ["Sıkça","Sabırsızca","Sinsice","Saatlerce"], correctAnswer: "Sıkça"),
        Question(q: "“Pilot”, “dolma” ve “kurşun” hangisinin çeşitlerine verilen isimlerdir?", a: ["Kalem","Defter","Silgi","Cetvel"], correctAnswer: "Kalem"),
        Question(q: "İlkokulda, sınıfta konuşanların ve yaramazlık yapanların adını tahtaya yazan öğrenci genellikle kim olur?", a: ["Temizlik kolu başkanı","İlk yardım kolu başkanı","Kütüphane kolu başkanı","Sınıf başkanı"], correctAnswer: "Sınıf başkanı"),
        Question(q: "İçinden çıkılması güç bir durum karşısında söylenen “Doluya koydum almadı” şeklinde başlayan sözün devamı nasıldır?", a: ["Elimde hiç kalmadı","Boşa koydum dolmadı","Döküldü azalmadı","Bu iş böyle olmadı"], correctAnswer: "Boşa koydum dolmadı"),
        Question(q: "Halk arasında “üstüne titremek” ifadesi hangi anlamda kullanılır?", a: ["Utanmak ve sıkılmak","Kormak ve çekinmek","Sevmek ve özen göstermek","Afallamak ve şaşırmak"], correctAnswer: "Sevmek ve özen göstermek"),
        Question(q: "İnternetin ilk zamanlarında sıkça kullanılan, “internet sitelerinde rastgele gezinmek” anlamına gelen söz hangisidir?", a: ["Bisiklete binmek","Kızak kaymak","Paraşütle atlamak","Sörf yapmak"], correctAnswer: "Sörf yapmak")
        
    ]
    
    let question3 = [
        Question(q: "“Seninki 3 oktav olduğu için tizlere rahat çıkabiliyorsun” denilen birinin mesleği muhtemelen hangisidir?", a: ["Balet","Jonglör","Pandomim sanatçısı","Şarkıcı"], correctAnswer: "Şarkıcı"),
        Question(q: "“Sabah zumba dersim var akşam da spinning dersine gireceğim” diyen biri bu dersleri muhtemelen nerede alacaktır?", a: ["Spor salonunda","Kütüphanede","Halı sahada","Düğün salonunda"], correctAnswer: "Spor salonunda"),
        Question(q: "Tuttuğu bozuk parayı parmaklarının arasında dolaştıran sihirbaz, avcunu açıp kaybolduğunu gösterdikten sonra parayı genellikle neresinden çıkartır?", a: ["Çenesinin altından","Başının üstünden","Kulağının arkasından","Ağzının içinden"], correctAnswer: "Kulağının arkasından"),
        Question(q: "“Senin o anlattığın devede kulak” diyen biri bahsettiği şey hakkında hangisini söylemek istiyordur?", a: ["Çok karmaşık ve anlamsız","Çok büyük ve dikkat çekici","Çok küçük ve yetersiz","Çok detaylı ve derin"], correctAnswer: "Çok küçük ve yetersiz"),
        Question(q: "Otomobil yıkamaya verilirken yıkanması gereken yerler genellikle nasıl belirtilir?", a: ["İç dış","Ön arka","Alt üst","Cam çerçeve"], correctAnswer: "İç dış"),
        Question(q: "“Çatallı” ifadesi hangisinin kusurlu olanı için kullanılır?", a: ["Ses","Görüntü","Tat","Koku"], correctAnswer: "Ses"),
        Question(q: "Sevdiği kişiye “serenat” yaptığı söylenen biri hangisini yapmış demektir?", a: ["Açık havada şarkı söylemek","Kapalı alanda dans etmek","Adına şiirler yazmak","Yollarına gül dökmek"], correctAnswer: "Açık havada şarkı söylemek"),
        Question(q: "Halk arasında söze göre horozu çok olan köyde hangisi geç olur?", a: ["Sabah","Akşam","Öğlen","Bayram"], correctAnswer: "Sabah"),
        Question(q: "Halk arasında kullanılan ve “yakar” şeklinde biten sözün başı nasıldır?", a: ["İçi seni dışı beni","Dışı beni içi seni","İçi beni dışı seni","Dışı seni içi beni"], correctAnswer: "İçi beni dışı seni"),
        Question(q: "“İmar geldiği zaman çok değerlenecek” vaadiyle satılan şey hangisi olabilir?", a: ["Arsa","Araba","Tekne","Tablo"], correctAnswer: "Arsa")
    ]
    
    let question4 = [
        Question(q: "Değeri olan şeyleri, kimseleri koruyan veya sayan, iyilikbilir kişiler için kullanılan ifade hangisidir?", a: ["Müşkülpesent","Nanemolla","Kadirşinas","Vakur"], correctAnswer: "Kadirşinas"),
        Question(q: "“Akçaabat”, “İnegöl”, “Tire” gibi yerlerin hangi tür yiyeceği meşhurdur?", a: ["Dondurma","Helva","Köfte","Kebap"], correctAnswer: "Köfte"),
        Question(q: "“Göbekli”, “şeker” ve “kan” hangi meyvenin türleridir?", a: ["Portakal","Mandalina","Kiraz","Karpuz"], correctAnswer: "Portakal"),
        Question(q: "Boksta, bükük kolla aşağıdan yukarıya doğru çeneye atılan yumruğa ne ad verilir?", a: ["Kroşe","Aparkat","Swing","Punch"], correctAnswer: "Aparkat"),
        Question(q: "Sebzeli, etli birçok farklı tarifle hazırlanan, Çin mutfağına özgü, çorba içinde pişirilen erişte veya şehriyeye ne ad verilir?", a: ["Wasabi","Tofu","Noodle","Taco"], correctAnswer: "Noodle"),
        Question(q: "Size izlemediğiniz bir filmle ilgili hangisi söyleyen kişi “spoiler” vermiş olur?", a: ["Başrol oyuncusunun adını","Yönetmenin kim olduğunu","Hangi ülkede çekildiğini","Sonunun nasıl bittiğini"], correctAnswer: "Sonunun nasıl bittiğini"),
        Question(q: "40 yolcusu bulunan bir belediye otobüsünden, bir durakta 15 yolcu inip 9 yeni yolcu binmişse, son durumda yolcu sayısı kaç olur?", a: ["34","36","44","46"], correctAnswer: "34"),
        Question(q: "“Karaman”, “merinos”, “kıvırcık” hangi hayvanın türleridir?", a: ["At","Sığır","Koyun","Keçi"], correctAnswer: "Koyun"),
        Question(q: "Sezen Aksu, “Gülümse, hadi gülümse, bulutlar gitsin” diye başlayan şarkısında, hangi hayvanının bile olmadığından bahseder?", a: ["Köpek","Tavşan","Kedi","Kuş"], correctAnswer: "Kedi"),
        Question(q: "“Kırlent” hangisinin bir türüdür?", a: ["Halı","Nevresim","Yastık","Yorgan"], correctAnswer: "Yastık")
    ]
    
    let question5 = [
        Question(q: "Haberlerde “Avam Kamarası'nda kabul edilen yasa tasarısı, Lordlar Kamarası'nda görüşülecek” cümlesini duyduysanız, bahsi geçen ülke hangisidir?", a: ["İsveç","İngiltere","Almanya","Danimarka"], correctAnswer: "İngiltere"),
        Question(q: "Yeşilçam’da “Karacaoğlan” ve “Tarkan” karakterlerini canlandıran, “Tosun Paşa” ve “Hababam Sınıfı Dokuz Doğuruyor” filmlerini yöneten kişi kimdir?", a: ["Ekrem Bora","Ediz Hun","Yılmaz Güney","Kartal Tibet"], correctAnswer: "Kartal Tibet"),
        Question(q: "Bir giysinin iki yanını bitiştirmeye yarayan ve metal bir halka ile bir çengelden oluşan araca ne ad verilir?", a: ["Gergef","Yüksük","Kopça","Çile"], correctAnswer: "Kopça"),
        Question(q: "Uçabilen bir fil olan çizgi film kahramanı “Dumbo”, hikayeye göre hangisi sayesinde uçabilmektedir?", a: ["Gözleri","Kulakları","Hortumu","Ayakları"], correctAnswer: "Kulakları"),
        Question(q: "Giymiş oldukları “19” ve “03” sırt numaralı formalarıyla yan yana gelen sevgililer, hangi takıma olan sevgilerini gösterirler?", a: ["Beşiktaş","Fenerbahçe","Galatasaray","Trabzonspor"], correctAnswer: "Beşiktaş"),
        Question(q: "İçi yumuşak, oturduğunuzda kolayca şekil alan, kalın kumaşla kaplı koltuk çeşidi hangi meyvenin adıyla anılır?", a: ["Ayva","Kavun","Armut","Kayısı"], correctAnswer: "Armut"),
        Question(q: "Bir futbol sahasında çeyrek daireler nerede bulunur?", a: ["Ceza alanında","Orta sahada","Korner köşelerinde","Altıpasta"], correctAnswer: "Korner köşelerinde"),
        Question(q: "Et ve balık gibi yiyecekleri odun veya saman dumanına tutarak yapılan işleme ne ad verilir?", a: ["Buğulamak","Sotelemek","Mühürlemek","Tütsülemek"], correctAnswer: "Tütsülemek"),
        Question(q: "Eski kuşaklar tarafından “ikilem” anlamında kullanılan kelime hangisidir?", a: ["Mamafih","Dilemma","Sitayiş","Atalet"], correctAnswer: "Dilemma"),
        Question(q: "İçeriden görülmeden dışarıyı görmeyi sağlayan, şerit biçiminde metal veya plastik levhalardan yapılmış pencere kapama düzenine ne ad verilir?", a: ["Agraf","Korniş","Jaluzi","Rivet"], correctAnswer: "Jaluzi")
    ]
    
    let question6 = [
        Question(q: "Auguste ve Louis Lumiere kardeşler, hangi alanda verdikleri eserlerle bilinen isimlerdir?", a: ["Müzik","Sinema","Edebiyat","Heykel"], correctAnswer: "Sinema"),
        Question(q: "Bir büyükelçinin temsilci olarak bulunduğu ülke dışına çıkması durumunda veya o ülkeye gelmesinden önce ona vekalet eden diplomata ne ad verilir?", a: ["Ataşe","Konsolos","Maslahatgüzar","Müsteşar"], correctAnswer: "Maslahatgüzar"),
        Question(q: "Hangisi Türkçedeki ünlü harfleri iki karşı gruba ayıran başlıklardan biri değildir?", a: ["Kalın-İnce","Düz-Yuvarlak","Geniş-Dar","Sert-Yumuşak"], correctAnswer: "Sert-Yumuşak"),
        Question(q: "Ilgaz Dağları'nda dolaştığını söyleyen biri hangi iki il sınırları içerisinde geziyor demektir?", a: ["Kastamonu-Çankırı","Sakarya-Bolu","Sinop-Samsun","Amasya-Giresun"], correctAnswer: "Kastamonu-Çankırı"),
        Question(q: "Hangisinin adıyla anılan ve atkı, hırka gibi kıyafetlerde kullanılan bir tür örgü biçimi vardır?", a: ["Beyrut","Üsküp","Sofya","Selanik"], correctAnswer: "Selanik"),
        Question(q: "“Manfred”, “Sid” ve “Diego” hangi animasyon filminin karakterleridir?", a: ["Buz Devri","Aslan Kral","Oyuncal Hikayesi","Kung Fu Panda"], correctAnswer: "Buz Devri"),
        Question(q: "“Armadillo” nedir?", a: ["Bir hayvandır","Bir ülkedir","Bir coğrafi şekildir","Bir giysidir"], correctAnswer: "Bir hayvandır"),
        Question(q: "Müzikte hangi notanın adıyla anılan bir anahtar yoktur?", a: ["Do","Mi","Fa","Sol"], correctAnswer: "Mi"),
        Question(q: "Genellikle gelinliklerin içine kabarık görüntü vermesi için konulan giysiye ne ad verilir?", a: ["Jile","Klapa","Tayyör","Tarlatan"], correctAnswer: "Tarlatan"),
        Question(q: "Profesyonel video çekimlerinde, çekime başlamadan önce kameralarda hangi rengi temel alan bir ayar yapılır?", a: ["Kırmızı","Sarı","Mavi","Beyaz"], correctAnswer: "Beyaz")
    ]
    
    let question7 = [
        Question(q: "“Kuşlar”, “Bulutlar” ve “Eşek Arıları” adlı tiyatro eserleri, Antik Çağ'ın en önemli komedya yazarlarından olan hangi yazara aittir?", a: ["Euripides","Aristofanes","Sofokles","Demokritos"], correctAnswer: "Aristofanes"),
        Question(q: "Mezar taşında “Dedi Kuzgun: Bir daha asla!” yazan şair ve yazar kimdir?", a: ["Edgar Allan Poe","Emily Dickinson","Pablo Neruda","T.S. Eliot"], correctAnswer: "Edgar Allan Poe"),
        Question(q: "“Karartma Geceleri”, “Bacaksız Okulda” ve “Sarı Yazma” kitapları hangi yazara aittir?", a: ["Haldun Taner","Rıfat Ilgaz","Kemalettin Tuğcu","Orhan Kemal"], correctAnswer: "Rıfat Ilgaz"),
        Question(q: "“İnsan Ne ile Yaşar” ve “Kreutzer Sonat” kitaplarının yazarı kimdir?", a: ["Lev Tolstoy","Necib Mahfuz","Halit Hüseyni","Goethe"], correctAnswer: "Lev Tolstoy"),
        Question(q: "Türk edebiyatının ilk realist roman örneği sayılan “Araba Sevdası” eseri kime aittir?", a: ["Recaizade Mahmut Ekrem","Muallim Naci","Ahmed Mithat Efendi","Nabizade Nazım"], correctAnswer: "Recaizade Mahmut Ekrem"),
        Question(q: "“Bilginin Arkeolojisi” ve “Kelimeler ve Şeyler” kitaplarının yazarı, tarihçi, eleştirmen ve sosyolog kimdir?", a: ["Noam Chomsky","Michel Foucault","Louis Althusser","Jacques Lacan"], correctAnswer: "Michel Foucault"),
        Question(q: "“Küçük Deniz Kızı” adlı kitabın yazarı olan ve çıktığı Avrupa gezisinden sonra kaleme aldığı “Bir Şairin Çarşısı” adlı eserinde İstabul’u anlatan yazar hangisidir?", a: ["Hans Christian Andersen","Carlo Collodi","Jonathan Swift","La fontaine"], correctAnswer: "Hans Christian Andersen"),
        Question(q: "Hangisi bir hamur tatlısıdır?", a: ["Kesat","Mafiş","Heyhey","Maval"], correctAnswer: "Mafiş"),
        Question(q: "Yunan mitolojisinde berberinin bir kuyuya, kulaklarının eşek kulakları olduğu sırrını söylediği Midas hangi ülkenin kralıdır?", a: ["Makedonya","İyonya","Hitit","Frigya"], correctAnswer: "Frigya"),
        Question(q: "Başkarakterleri Dr. Jack, Sawyer ve Kate olan, gizemli senaryosuyla büyük ilgi toplayan, finaliyle bir kısım hayranını hayal kırıklığına uğratan dizi hangisidir?", a: ["Breaking Bad","Dr. Who","Fringe","Lost"], correctAnswer: "Lost")
    ]
    
    let question8 = [
        Question(q: "Dünyadaki en fazla dinozor yumurtası fosilini bulundurarak Guinness Dünya Rekorları'na giren ve lakabı “Dinozorlar Evi” olan şehir hangi ülkededir?", a: ["İngiltere","Rusya","Çin","ABD"], correctAnswer: "Çin"),
        Question(q: "Antik Yunan’da düzenlenen Olimpiyat oyunlarında birinci olana verilen kupanın içinde hangisi olurdu?", a: ["Altın sikke","Gümüş sikke","Zeytinyağı","Tuz"], correctAnswer: "Zeytinyağı"),
        Question(q: "“Süper Mario” oyununda, Mario’nun kendisi gibi muslukçu olan erkek kardeşinin adı nedir?", a: ["Emilio","Luigi","Leonardo","Luciano"], correctAnswer: "Luigi"),
        Question(q: "Hangisi, 11 Oscar ile “En Fazla Oscar Kazanan Filmler” listesinde ilk sırayı paylaşan 3 filmden biri değildir?", a: ["Ben-Hur","Titanik","Yüzüklerin Efendisi: Kralın Dönüşü","Yıldız Savaşları: Yeni Bir Umut"], correctAnswer: "Yıldız Savaşları: Yeni Bir Umut"),
        Question(q: "Afrika’da ulusal parkların dışındaki çiftçi tarlalarına zarar veren filleri engellemek için çiftçiler hangilerini besleyerek filleri tarlalarından uzak tutabilmektedirler?", a: ["Fare","Arı","Karga","Kirpi"], correctAnswer: "Arı"),
        Question(q: "Hangi kuşun diğer adı “ebabil”dir?", a: ["Bataklık kırlangıcı","Çöl kırlangıcı","Deniz kırlangıcı","Dağ kırlangıcı"], correctAnswer: "Dağ kırlangıcı"),
        Question(q: "1926'da önce kullanılan ve “Alaturka” da denilen saat sistemine göre bir günün bitip diğerinin başladığını haber veren ezan hangisi olur?", a: ["Sabah ezanı","Öğle ezanı","Akşam ezanı","Yatsı ezanı"], correctAnswer: "Akşam ezanı"),
        Question(q: "2011'de yapılan bir çalışmaya göre hangi ünlü yapının çıplak gözle görülür biçimde eğiliyor olduğu açıklanmıştır?", a: ["Empire State Binası","Eyfel Kulesi","Big Ben","Özgürlük Anıtı"], correctAnswer: "Big Ben"),
        Question(q: "İstanbul’da bir firma, 7 yıldır devam eden kampanya boyunca hangi hizmeti alan müşterilerine Franz Kafka’nın “Dönüşüm” kitabını hediye etmiştir?", a: ["Böcek ilaçlama","Tercüme ve çeviri","Estetik operasyon","Boya ve badana"], correctAnswer: "Böcek ilaçlama"),
        Question(q: "Hangi hayvan, yavrularını 8 yıldan daha uzun süre emzirebilmektedir?", a: ["Orangutan","Ayı","Yarasa","Zürafa"], correctAnswer: "Orangutan")
    ]
    
    let question9 = [
        Question(q: "2009'da yeni bir gök taşı keşfeden Fransız gök bilimci Jean-Claude Merlin, gök taşına, hayran olduğu hangi sanatçının ismini vermiştir?", a: ["Ajda Pekkan","Sezen Aksu","Yıldız Tilbe","Zeki Müren"], correctAnswer: "Sezen Aksu"),
        Question(q: "Osmanlıcada “dücace” ve “harguş” hangi iki hayvana verilen adlardır?", a: ["Tavuk ve tavşan","Kedi ve köpek","At ve eşek","Yılan ve fil"], correctAnswer: "Tavuk ve tavşan"),
        Question(q: "Hangi ünlü kişinin beyni, ölümünden sonra incelenmek için 30.000'den fazla parçaya ayrılmıştır?", a: ["Albert Einstein","Winston Churchill","Vladimir Lenin","Nikola Tesla"], correctAnswer: "Vladimir Lenin"),
        Question(q: "Adolphe Sax 1846'da tasarladığı müzik aleti saksafonun patentinin başvurusunda sunduğu saksafonu hangisinden üretmiştir?", a: ["Seramik","Ahşap","Bakır","Cam"], correctAnswer: "Ahşap"),
        Question(q: "Paul McCartney, The Beatles’ın “A Day in the Life” şarkısının sonuna yerleştirdiği sesin sadece hangi hayvan tarafından duyulabileceğini söylemiştir?", a: ["Yarasa","Ayı","Fare","Köpek"], correctAnswer: "Köpek"),
        Question(q: "Hangi animasyon filmi, Time dergisinin 2007'de yayımladığı “en iyi 25 korku filmi” listesinde yer almaktadır?", a: ["Kayıp Balık Nemo","Bambi","Peter Pan","Aslan Kral"], correctAnswer: "Bambi"),
        Question(q: "“Şövalye”, “kavalye” gibi Türkçeye Fransızcadan geçmiş kelimelerin kökeninin anlamı hangisidir?", a: ["Kılıç","At","Mızrak","Zırh"], correctAnswer: "At"),
        Question(q: "George R.R. Martin’in, çocukken beslediği ve sırayla ölen hangi hayvanlarının birbirlerine tuzak kurduğunu hayal etmesi Game of Thrones’a ilham vermiştir?", a: ["Kaplumbağa","Tavşan","Fare","Karga"], correctAnswer: "Kaplumbağa"),
        Question(q: "Forbes dergisinin araştırmasına göre 2016 yılında en çok para kazanan hayatını kaybetmiş şarkıcı kimdir?", a: ["Amy Winehouse","Freddie Mercury","Michael Jackson","Bob Marley"], correctAnswer: "Michael Jackson"),
        Question(q: "İstanbul’un fethine 20'li yaşlarda tanık olan ve 50 yaşında vefat eden biri hayatı boyunca hangisini görmemiştir?", a: ["Tavuk","Ördek","Kaz","Hindi"], correctAnswer: "Hindi")
    ]
    
    let question10 = [
        Question(q: "İngilizcesi “Happy birthday” olan ve Türkiye’de “İyi ki doğdun” olarak söylenen şarkının 1893'te yazılan ilk sözlerinde yer alan ifadenin Türkçesi nedir?", a: ["Bu ne güzel pasta","İyi uykular size","Kedim bugün yasta","Herkese günaydın"], correctAnswer: "Herkese günaydın"),
        Question(q: "“Bir kız bana emmi dedi neyleyim” sözü hangi halk ozanına aittir?", a: ["Ercişli Emrah","Dadaloğlu","Aşık Daimi","Karacaoğlan"], correctAnswer: "Karacaoğlan"),
        Question(q: "Kur’an-ı Kerim’de hangisi üzerine yemin edilmemiştir?", a: ["Deniz","Güneş","Arı","Kalem"], correctAnswer: "Arı"),
        Question(q: "1941'de kocası Almanlar tarafından öldürülen Mariya Oktyabrskaya, her şeyini satıp “Savaşan Kız Arkadaş” adını verdiği hangi aracı alarak savaşa katılmıştır?", a: ["Savaş gemisi","Tank","Uçak","Denizaltı"], correctAnswer: "Tank"),
        Question(q: "Heykeltraş Pietro da Milano’nun 2012'de yaklaşık 400 bin sterline müzadeye çıkan madalyonu hangi padişahın bilinen ilk portresini taşır?", a: ["Kanuni Sultan Süleyman","Fatih Sultan Mehmed","Yavuz Sultan Selim","Abdülmecid"], correctAnswer: "Fatih Sultan Mehmed"),
        Question(q: "İzmir Seferihisar’da bulunan 1,5 metre yüksekliğinde bir sütuna yazılmış ve 58 satırdan oluşan 2200 yıllık yazıtın hangisi olduğu anlaşılmıştır?", a: ["Yemek tarifi","Piyes tanıtımı","Evlilik akdi","Kira sözleşmesi"], correctAnswer: "Kira sözleşmesi"),
        Question(q: "Hesap ödemek yerine ya bağış yapılan ya da gönüllü olarak çalışılan ABD’deki “Soul Kitchen” adlı restoran kime aittir?", a: ["Bono","Jon Bon Jovi","Keanu Reeves","Lady Gaga"], correctAnswer: "Jon Bon Jovi"),
        Question(q: "Guinness Dünya Rekorları'na göre hangi karakter sinema ve televizyonlarda toplam 254 kez canlandırılmıştır?", a: ["James Bond","Sherlock Holmes","Monte Kristo Kontu","Superman"], correctAnswer: "Sherlock Holmes"),
        Question(q: "Bruce Lee, 1958'de Hong Kong’ta katıldığı hangi dans yarışmasında birinci olmuştur?", a: ["Çaça","Salsa","Twist","Tango"], correctAnswer: "Çaça"),
        Question(q: "Heredot’un yazdığı, Mısır firavununun dilin kökeni deneyinde, doğunca çobana verilerek kapatılan, o dahil kimseyle konuşturulmayan çocuğun söylediği ilk kelime nedir?", a: ["Ver","Anne","Ekmek","Su"], correctAnswer: "Ekmek")
    ]
    
    mutating func getQuestionNumber() -> [Question] {
        switch questionNumber {
        case 0:
            return question1
        case 1:
            return question2
        case 2:
            return question3
        case 3:
            return question4
        case 4:
            return question5

        case 5:
            return question6
        case 6:
            return question7
        case 7:
            return question8
        case 8:
            return question9
        default:
            return question10
        
    }
    }
    
    
    mutating func getQuestionText() -> String {
        
        return getQuestionNumber()[randomNum].text
    }
    
    mutating func getAnswers() -> [String] {
        
        return getQuestionNumber()[randomNum].answers
        }
    
    mutating func getCorrectAnswer() -> String {
        return getQuestionNumber()[randomNum].rightAnswer
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
            //Need to change answer to rightAnswer here.
            if userAnswer == getQuestionNumber()[randomNum].rightAnswer {
                score += 1
                return true
            } else {
                return false
            }
        }
    
    
    mutating func nextQuestion() {
            
            if questionNumber + 1 < 10 {
                questionNumber += 1
                randomNum = Int.random(in: 0...9)
            } else {
                questionNumber = 0
            }
        }

}

USE [TravelDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2.01.2024 06:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 2.01.2024 06:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Abouts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 2.01.2024 06:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[AddressFull] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 2.01.2024 06:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 2.01.2024 06:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogTitle] [nvarchar](max) NULL,
	[BlogDate] [datetime] NULL,
	[BlogDescription] [nvarchar](max) NULL,
	[BlogImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2.01.2024 06:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[CommentContent] [nvarchar](max) NULL,
	[BlogId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 2.01.2024 06:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Homes]    Script Date: 2.01.2024 06:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Homes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Homes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202312241450188_CreateDb', N'TravelTripProject.Migrations.Configuration', 0x1F8B0800000000000400ED5CCD6EE33610BE17E83B083AB545D64AB29736B077913A9B36E8E607B177D1DB829668872D45A922953A28FA643DF491FA0A1D8A922C8994255B96D759043DD4A1381FC9996FC82167B0FFFDF3EFF0EDD2A7D6238E3809D8C83E191CDB16666EE011B618D9B198BFFADE7EFBE6EBAF86EF3C7F697DCCFABD96FD4092F191FD204478E638DC7DC03EE2039FB851C083B918B881EF202F704E8F8F7F704E4E1C0C10366059D6F03E6682F838F903FE1C07CCC5A18811BD0E3C4C79DA0E5F2609AA75837CCC43E4E2913D8DD023A6D388847751F01B76C540C90CC614718EB96D9D5382605E134CE7B685180B041230EBB30F1C4F4414B0C524840644A74F21867E7344394E5773B6EADE7661C7A77261CE4A308372632E027F43C093D7A9A69CAAF856FAB6734D822EDF81CEC5935C75A2CF917D3E0B62615BD591CEC63492BD9A753D48108E2CADDF514E156094FCEFC81AC754C4111E311C8B08D123EB2E9E51E2FE829FA6C1EF988D584C6971BA3061F8566A8026C00F71249EEEF13C5DC495675B4E59CEA90AE6620519B5C22B265E9FDAD60D0C8E6614E76C286863228208FF84198E90C0DE1D1202474C62E0449FDAE8D5B17CB4C01F229A8D081404DFB2AD6BB47C8FD9423C8C6CF8695B976489BDAC259DC50746C015414844316E1AE80273172CA0B8B2D3B186CE8A3AEB09E57911E6BC1BA514C60BA9D68D352582E2DE19959AE2522AB1EFB1AE11E97F90BB8780F5AFB6F7818B3EAF17FA8475F4414078F1C07563413011C95FFD73164CF26710799F8B4D3FD260D1894C12E0854BEBC6921ADACF8E2E47BA80396603C9DF53E2B793EB2DBE308F97044EBB1FE9063D924562B6CA98E3C0F7C15EC915E21ED3A40B7F20A1BA490CB2CF9F94435C46817F1FD0825CF2E1D314450B0C41F534307D9D0471E46EEB891954276FCC405E3CF22076F7BD843DA9CDE1962DE07FFB71DE4663B5754BE56EDB3B64E6726687CCDC754B876402B9DD6ED029C68B3BAE1BEBCB71C5493C93B6ED7F31706FDBFDF1D9DA337E0EA4C13AB8850478F189CFFF046008FADA6CE8754439E73C7049B2FE4A50A376F1F25CDE31CF5ABBA5ABB5170F035001F08184C000187E647FA72DB00E340FDC56A0EA6029039ED855EADCB20B4CB1C0D6B9AB9E79C788BBC8D3550B3AF1CA2DC0361C4973230AE70007FE1226746A12E69210D175D3AE08B564B49C540E5FFD728143CC2419D7D9A0CDB8593CA08F9D0F515154935E864E8148FA46949CA9041C2B23311228097E96A6B31A62BD745FE2A94F540923312758145FCD81682B86A774499FD335BE55C4D5A31A362264EFA78D183E616680E4E9A7415C1AC424ADF8DE205CBC2669082B376C4449C21E33461A553540C823C224AFCE9E8A70812FFA52D208B2D0C7186256E9DBB43DE5132E2B4D7383A61DA980935AAEBAB1945767D887738F5865D61C955ACB52704E4D0E6E788DC210CE96424E2E6DB1262A21377E35D93C37E52B0CC7E58614553EDB7C24382A219AA97C95FAF2F02589B8901E3E43F2141A7BBED6ADE8FF359CCA462AB9B86EA88C6A5977F93B3D8E5BA5CA0CFB650A75090B94B64FD68A0B26AF914B72A388A2C810828C031AFBAC7ED35F239D27AB4A18796B7BA452E050042B7DD0F1864E4521DAA1A159413B65CB366D67F17C57DEADD1D30D7D0BB3D749F663F8349A2C02A44DED314AE9A22252E9437B3C75212B02A996F60869BEA7089136B5C75865738A30ABD603A2701214EC98BF329ED886BD46B97EB8BB7AAC2B62AC5A37E04B9E6B2951266F3D185BAB3860A7A63685382D2C6D16EBC7D0853C4911A4D0BC1996CA8454A154EB864875A79DF67133DC340752454C9B0F868E85F076A79CCCAF139BF3B25EF4D037A1EEC75EF5BDBF8855FDB6211F3D03190F6963CCEF953BE6A1BA926E43C31AC97E58A83370FFECCB9FB88B2079E30633C99EB04B93C91A0F8671EA1962A7744B5E3036E79A59EC70EF0B077945D45E4CAA5DF2D1F39793CA0BC9307DAD682E65D69E2F5417DB02453D124F3E5D4C9EB8C0FE4076184CFEA0634A925D3BEB708D1899632E54AAC33E3D3E39ADD43F1F4E2DB2C3B9470DAF3D5A41F2DE933544AAB4311DD394C16EA8FB658F28721F50F48D8F96DF16D1B64CC36C80B771FDEE9761815286AC93FA0D85B09DF08AA9E64E40A582D64E48D5A2D57EE8A5BD0A3C5B72552B84BA99B152E3D987F20DF9D5E7AA7BAD5EB293F2AB35911EFC16494DE416389DF6693366A90EB20F6698AFCACF961D3BF5CC9DEDD4E61ABCEEE428EB524B6E5F310F2F47F65F89C89975F5EB27257564DD46103F9E59C7D6DF5BD672D496C37D19343A3C0A556AC7BA4DAA5C1FD6C7B6A25F479F2D177677D8180E8864C67BADA652E50EFB2C74D24B1CB6ACDEDAAA62AA26B5D15B85D4F3A88AD28B276ADEBB4A97F3DAB227F57601E1D32C00DB2A2E67A552ED4AA2D6154419D15795546DEAA5EACBA5CCE0AAC4AA4529556D259509D75CC1535764B5B6C4CA04BF6901D6BAFA2B337E56B7D5A23AABB638CB849C9673EDB56EAB68BD5536B34D8596B1BAAB9FC22CFD3911B682C2BF9F00DB10278B1584FCD71418764B9B40DEE78ACD836C2FAACC28EBA2450A02C195089D4782CCC1F4F0D905AF4BCA8D3F221A439777FE0C7B57EC3616612C60C9D89FD152FDB2DCD3D68D9F549F95E73CBC4D0E49BE8B25C03489BCD5DDB21F6342BD7CDE9786A3B606426E966940216D296460B178CA916EB4A2923AA0547DF91E3FC57E48018CDFB2097AC4DBCC0D2E3CEFF102B94FD9AB703D48B321CA6A1F5E10B48890CF538C953CFC091CF6FCE59BFF0149074CE646440000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([Id], [UserName], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [BlogTitle], [BlogDate], [BlogDescription], [BlogImage]) VALUES (1, N'Hatay', CAST(N'2023-11-17T00:00:00.000' AS DateTime), N'Dünyanın en eski şehirlerinden biri, birçok medeniyetin kalbi, hoşgörünün adresi, midelerin bayram yeri Hatay! Ve inanın ki bu tanımlamanın hiçbir satırı abartı değil, kısa cümlelerden mütevellit bir şehir tarifini içeriyor. Hatay’ın bilinen tarihinin M.Ö. 100.000’e kadar gittiği yönünde bulgular var. M.Ö. 300’lü yıllarda da Antakya’nın kurulduğu biliniyor. Hititlerden başlayıp, Osmanlı’ya kadar uzayan zaman yolculuğuna da Mısırlılar, Urartular, Persler, Abbasiler, Selçuklular ve daha nice medeniyet dahil olmuş. Şimdilerde ise bu medeniyetlerin havaya sinen efsununu hissedip, bıraktığı eserlerini görüp, mutfağının eşsiz lezzetlerini deneyimlediğimiz bir kültür başkenti diyelim Hatay için.
', N'https://i.hizliresim.com/jp0dqih.jpg')
INSERT [dbo].[Blogs] ([Id], [BlogTitle], [BlogDate], [BlogDescription], [BlogImage]) VALUES (2, N'Ankara', CAST(N'2022-10-10T00:00:00.000' AS DateTime), N'5000 yıllık geçmişiyle, Anadolu’nun pek çok köklü medeniyetine ev sahipliği yapmış Ankara sadece Türkiye''nin başkenti olmasıyla değil; sunduğu sayısız doğal, tarihi ve kültürel güzellikle de keşfedilmeyi hak eder. Bugüne kadar belki iş için gittiniz ya da belki çeşitli zamanlarda akraba ziyaretleri gerçekleştirdiniz. Peki, hiç Ankara’da turist oldunuz mu? Kentin sokaklarında dolaşıp fotoğraf çekmek, tarihin modern olanla nasıl mükemmel uyum sağladığını görmek, misafirperver Ankaralılarla sohbet etmek, Anadolu''nun kendine has ve leziz lezzetlerinden tatmak, şehrin değerlerini yakından görmek için Ankara''yı ziyaret edebilirsiniz.', N'https://i.hizliresim.com/oab295b.jpg')
INSERT [dbo].[Blogs] ([Id], [BlogTitle], [BlogDate], [BlogDescription], [BlogImage]) VALUES (3, N'Ardahan Çıldır', CAST(N'2021-03-06T00:00:00.000' AS DateTime), N'Tarihi süreç içinde, Çıldır gölünün bulunduğu yerde bir şehir varmış. Şehrin yöneticisi, Akçakale bölgesinde otururmuş. Çukurda kurulu olan şehirde, burma musluklu bir çeşme varmış. Yönetici: “Gece-gündüz, çeşmeden su alanlar, sakın çeşmeyi kapatmayı unutmasınlar, yoksa şehri su basar” diye, herkesi uyarmış.

Şehirde yaşayanlar, bu uyarıyı hep dikkate almışlar. Ancak, günlerden bir gün, çeşme başında su dolduran bir genç kız, gurbetten sevdiğinin geldiğini duyar ve çeşmeyi kapatmadan, hızla koşarak, çeşme başından ayrılır. O gece karanlığında, şehrin çukur bölümündeki evleri su basar ve zamanla, burmalı çeşme görünmez olur ki, kimse kapatamaz. Evi yüksekte olanlar, hiçbir eşya alamadan, evlerini terk ederler. Ertesi gün ise, şehir tamamen sular altında kalır. Şehirden sağ kurtularak kaçanlar, Akçakale adasına yerleşirler.

Evet, Çıldır gölü: kabaca üçgen şeklindedir. Ardahan il merkezine, 45 km. uzaklıktadır. Yukarıda belirttiğim gibi, Kars il merkezine de 45 dakika uzaklıktadır.', N'https://i.hizliresim.com/q8it1f1.jpg')
INSERT [dbo].[Blogs] ([Id], [BlogTitle], [BlogDate], [BlogDescription], [BlogImage]) VALUES (4, N'Bodrum', CAST(N'2023-03-12T00:00:00.000' AS DateTime), N'
Eski adı Halikarnas olan Bodrum Dor’lar tarafından kurulmuş. Onlardan sonra Karyalılar ve İyon halkına ev sahipliği yapmış. Halikarnas deniziyle doğasıyla bulunduğu konum itibariyle devletlerin, İmparatorların dikkatini çekmeye başlamış ve bu yüzden işgallerle karşılaşmış. Perslerden Büyük İskender’e, Mısır Kralı’ndan Romalılara, Bizans İmparatorluğu’ndan Osmanlı’ya kadar bütün medeniyetleri içinde barındırmış. En sonunda da Cumhuriyet döneminde Bodrum adını almış.

Sadece medeniyetlere değil önemli kişilere de ev sahipliği yapmış Bodrum; tarihin babası Herodot burada doğmuş. Ama Herodot siyasi düşünceleri yüzünden Lygdamis tarafından Halikarnas’tan sürülmüş ve Samos Adasına yerleşmiş. Bu sürgün onun kitap yazmasını sağlayacak seyahatlerin de başlangıcı olmuş. Mısır, Mezopotamya, Filistin, Rusya ve Afrika’ya giderek gördüğü yerleri ve insanları anlattığı ‘’Herodot Tarihi ‘’ni yazarak tarihin babası olma yolunda ilk adımını atmıştır.', N'https://i.hizliresim.com/1p77wws.jpg')
INSERT [dbo].[Blogs] ([Id], [BlogTitle], [BlogDate], [BlogDescription], [BlogImage]) VALUES (5, N'Gümüşhane', CAST(N'2021-10-21T00:00:00.000' AS DateTime), N'Adı üzerinde gümüş şehri. Hazineler dolduran şehir… Birçok medeniyet onun için savaştı, çünkü burada toprağın üstü kadar toprağın altı da çok değerliydi. Gümüş başta olmak üzere, altın, bakır gibi değerli madenler bu toprakların en büyük cazibesiydi. Aynı zamanda İran’dan Kafkasya’dan Trabzon’a geçiş yolları üzerinde olması nedeniyle her zaman önemini korudu…', N'https://i.hizliresim.com/idhnbwc.jpg')
INSERT [dbo].[Blogs] ([Id], [BlogTitle], [BlogDate], [BlogDescription], [BlogImage]) VALUES (6, N'Erzincan', CAST(N'2020-07-01T00:00:00.000' AS DateTime), N'Erzincan gezilecek yerler listesi doğal ve tarihi güzelliklerden oluşuyor. UNESCO Karma (Doğal ve Kültürel) Miras listesinde bulunan Kemaliye (Eğin) ilçesi, doğal ve kültürel zenginliklerinin yanısıra günümüze değin korunmuş geleneksel mimarisi ve konukseverliği ile de görülmeye değer yörelerimizden. Kentin ismini bir de son yıllarda trend olan Doğu Ekspresi tren yolculuklarının geçiş noktası olarak duyuyoruz. Sivas – Erzurum arasındaki Erzincan Doğu Ekspresi durağına, karlı Munzur ve Keşiş dağlarını izleyerek varıyorsunuz.', N'
https://i.hizliresim.com/jsqak5q.jpg')
INSERT [dbo].[Blogs] ([Id], [BlogTitle], [BlogDate], [BlogDescription], [BlogImage]) VALUES (7, N'Bursa', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'Osmanlı’nın ilk başkenti olan Bursa, zengin tarihi ile Türkiye’nin en önemli şehirlerinden biri. Her yıl binlerce yerli ve yabancı turist tarih ve kültür gezileri yapmak için Bursa’da gezilecek yerler ile ilgili araştırma yapıyor. 

Marmara Denizi’nin kıyısında yer alan Bursa, temiz sahilleriyle de dikkat çekmeyi başarıyor. Bunun yanı sıra büyüleyici mimari yapıları ve el değmemiş doğal güzellikleri ile de mutlaka ziyaret edilmesi gereken bir şehir. Konumu itibariyle de pek çok noktaya yakın olan Bursa’ya Türkiye’nin birçok yerinden hava yolu ya da karayoluyla ulaşım sağlayabilirsiniz.

Seyahat planlaması esnasında Bursa’nın Meşhur Yemekleri de göz önünde bulundurulmalı. Gastronomik açıdan da zengin olan Bursa, yöresel birçok lezzete sahip. Dolayısıyla yalnızca kültürel açıdan değil, gastronomik açıdan da benzersiz bir deneyim yaşamanızı mümkün kılıyor.', N'https://i.hizliresim.com/8puypvn.jpg
')
INSERT [dbo].[Blogs] ([Id], [BlogTitle], [BlogDate], [BlogDescription], [BlogImage]) VALUES (8, N'Muğla Bozburun', CAST(N'2022-11-17T00:00:00.000' AS DateTime), N'Bozburun nerede ve ne zaman gidilir?
Marmaris’in Güneybatı ucunda, kendi adını taşıyan yarımadanın, Simi Adası‘na tekneyle yarım saatlik mesafede. Aynı zamanda Marmaris’in bir diğer güzel ilçesi Selimiye’ye arabayla 15 dakika mesafede. Bozburun’a gelmişken komşu beldeleri Selimiye, Orhaniye ve Çiftlik’i de keşfetmeyi planlarınızın arasına alabilirsiniz. Uçakla gelmeyi planlıyorsanız en yakın havalimanı Dalaman Havalimanı. Biz Bozburun’da iki gün geçirdikten sonra bir de Marmaris koylarını gezip öyle döndük. Onun yazısı ayrı gelecek!

Bozburun’da deniz sezonu Mayıs ayında açılıyor ve Ekim ayı ortasına kadar sürüyor. Temmuz ve Ağustos en kalabalık ve sıcak sezon olsa da, Eylül ayı da az rüzgarlı ve yağmurlu. Ekim ayında gelirseniz Bozburun Gulet Festivali‘ne denk gelebilirsiniz, önceden tarihlere bakmakta fayda var. Biz Haziran ortasında gittik ve efsanevi bir zamanlamaydı. Yeterince sıcak, fakaz az kalabalık. aa', N'https://i.hizliresim.com/s05iicu.jpg')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [UserName], [Mail], [CommentContent], [BlogId]) VALUES (1, N'betul', N'betul@gmail.com', N'olayy', 1)
INSERT [dbo].[Comments] ([Id], [UserName], [Mail], [CommentContent], [BlogId]) VALUES (2, N'irem', N'irem@gmail.com', N'harikaymis', 2)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.Blogs_BlogId]
GO

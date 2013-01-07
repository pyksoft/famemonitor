  # encoding: utf-8
  
  require 'rubygems'
  require 'yajl'
  require 'tweetstream'
  require 'bunny'

  parser = Yajl::Parser.new
   b = Bunny.new(:host => "rabbit.apphera.com", :user => "guest", :pass => "guest")
    b.start
    q = b.queue("famestream")
    $ex = b.exchange("")
 
  TweetStream.configure do |config|
        config.consumer_key = "MgRHP9osHEisBgRzVqUGA"
        config.consumer_secret = "sdFrGXR5ntQArU57N73z3b9Fb5JFIoSbMUGYVdqqD0"
        config.oauth_token = "47562035-mOPVKsUw4Q1z7SZhCw2nrNW4MD4pZ2uyffF6hRz47"
        config.oauth_token_secret = "lNqoXnQD4qrTQxE4rNQiAMprpKEHvD6rhjGy0CmPpL0"
        config.auth_method = :oauth
        config.parser   = :yajl
      end
      
     
        p "this worked"
  
  client = TweetStream::Client.new
  p client

  client.on_error do |message|
    puts message
  end
  a = 0
  TweetStream::Client.new.track('Aaron Carter','Aaron Lewis','Adam Lambert','Adam Lazzara','Adam Levine','Al Green','Al Jarreau','Al Jolson','Alberta Hunter','Alicia Bridges','Amy Lee','Andy Biersack','Andy Williams','Angela Bofill','Anita Baker','Anna Moffo','Antony Hegarty','Aretha Franklin','Ari Up','Astrid Varnay','B. J. Thomas','Barbra Streisand','Barry White','Belinda Carlisle','Bert McCracken','Bessie Smith','Beth Ditto','Betty Carter','Beverly Sills','Billie Holiday','Blind Lemon Jefferson','Bo Bice','Bobbie Gentry','Bobby Bland','Bobby Brown','Bobby Day','Bobby Hatfield','Bobby Kimball','Bobby Rydell','Bobby Short','Bobby Vee','Bobby Vinton','Bonnie Bramlett','Brad Delp','Brandy','Bret Michaels','Brian Littrell','Britney Spears','Buddy Clark','Carlos Ponce','Carmen McRae','Carnie Wilson','Cassandra Wilson','Cathy Berberian','CeCe Winans','Cee-Lo','Celia Cruz','Chaka Khan','Cheryl James','Cheryl Lynn','Chris Brown','Chris Connor','Chris Daughtry','Chris Kirkpatrick','Christina Milian','Christopher Cross','Chubby Checker','Chuck Negron','Chynna Phillips','Ciara','Cissy Houston','Connie Francis','Cornell MacNeil','Cory Wells','Crystal Waters','D''Angelo','Darby Crash','Darius Rucker','David Cook','David Lee Roth','David Peaston','David Ruffin','Debbie Gibson','Debbie Harry','Debby Boone','Dee Dee Warwick','Deniece Williams','Dennis Crosby','Dexter Holland','Dinah Washington','Dionne Warwick','Dixie Lee','Don Cornell','Don Ho','Donna Summer','Donny Hathaway','Dorothy Maynor','Drew Lachey','Eddie Kendricks','Eddie Vedder','Edie Brickell','Eileen Farrell','El DeBarge','Elbridge Bryant','Eleanor Steber','Ella Fitzgerald','Elliott Yamin','Engelbert Humperdinck','Eric Benet','Erykah Badu','Ethel Waters','Etta James','Eva Cassidy','Exene Cervenka','Fantasia Barrino','Florence Ballard','Florence Mills','Frances Faye','Frances Langford','Frank Sinatra, Jr.','Frankie Laine','Frankie Valli','Frederica von Stade','Garnet Mimms','Gary Cherone','George Clinton','Gerald Levert','Geraldine Farrar','Ginuwine','Gladys Knight','Gladys Swarthout','Glenn Yarbrough','Gloria Gaynor','Gloria Loring','Gogi Grant','Grace Bumbry','Grace Slick','Hank Ballard','Hector Lavoe','Helen O''Connell','Helen Traubel','Howard Hewett','Howie D','Irma Thomas','J. C. Chasez','Jack Jones','Jackie Wilson','Jacoby Shaddix','Jake Shears','James Durbin','James McCracken','Jan Peerce','Jane Froman','Jani Lane','Janis Joplin','Jarboe','Jean Madeira','Jeannie C. Riley','Jerome Hines','Jerry Hadley','Jerry Vale','Jessi Colter','Jessica Simpson','Jill Scott','Jimmy Rushing','Jimmy Scott','Jo Stafford','Joe Keithley','Joe Williams','Joey Fatone','Joey Ramone','Johnny Mathis','Joi','Joni James','Jordan Knight','Judith Blegen','Juice Newton','Julia Migenes','June Christy','Justin Timberlake','Kate Pierson','Katharine McPhee','Kay Starr','Keely Smith','Kelis','Kellie Pickler','Kirk Franklin','Koko Taylor','La Toya Jackson','Lady Gaga','Lance Bass','LaToya London','LaVern Baker','Leonard Warren','Leontyne Price','Lesley Gore','LeToya Luckett','Levi Stubbs','Lil'' Mo','Lily Pons','Linda Perry','Linda Ronstadt','Lisa \"\"Left Eye\"\" Lopes','Lisa Lisa',\
     'Little Eva','Little Willie John','Lotte Lehmann','Lou Gramm','Lou Rawls','Louise Homer', \
     'Luther Vandross','Ma Rainey','Mahalia Jackson','Mama Cass','Margaret Whiting','Marilyn Horne', \
     'Marilyn Manson','Mario Lanza','Mark Volman','Marni Nixon','Martha Reeves','Marvin Gaye','Marvin Sapp','Mary Ford',\
     'Mary Travers','Mary Wells','Maureen McGovern','Mel Torme','Melvin Franklin','Michael Been','Michael Jackson',\
     'Michelle Williams','Minnie Pearl','Minnie Riperton','Monica','Nancy Wilson','Nat King Cole','Nick Carter','Nick Lachey','Nicolette Larson','Nina Simone','Norah Jones','Odetta','Otis Williams','Pat Benatar','Patti LaBelle','Patti Page','Patti Smith','Paul Williams','Paula Stewart','Pearl Bailey','Peggy Lee','Peggy March','Percy S','Perry Como', \
     'Perry Farrell','Philip Crosby','Phyllis Hyman','Pink','Ralph Tresvant','Renee Fleming','Richard Tucker','Ricky Martin','Rise Stevens',\
     'Rita Coolidge','Robert Merrill','Roberta Flack','Roberta Peters','Robin Thicke','Ronnie James Dio',\
     'Ronnie Spector','Rosa Ponselle','Rosa Raisa','Rose Bampton','Rosemary Clooney','Russ Columbo','Ruth Etting',\
     'Sam Cooke','Sammy Davis, Jr.','Sarah Vaughan','Scott Weiland','Selena','Sherrill Milnes','Sheryl Crow',\
     'Shirley Verrett','Shooby Taylor','Sisqo','Sky Saxon','Sophie Tucker','Stacey Q','Stacy Ferguson','Stephanie Mills',\
     'Steve Lawrence','Steven Tyler','Tameka Cottle','Tammi Terrell','Tank','Taylor Dayne','Teresa Brewer','Tevin Campbell',\
     'Thelma Houston','Tiffany','Tionne \"\"T-Boz\"\" Watkins','Tommy Sands','Toni Braxton','Toni Tennille','Wanda Jackson',\
     'Wayne Newton','Wendy O. Williams','Wendy Wilson','Whitney Houston','Will Oldham" ') do |status|
  #TweetStream::Client.new.track('madonna','hi') do |status|
  
  $ex.publish(status.inspect, :key => "famestream") 
  end
  
  

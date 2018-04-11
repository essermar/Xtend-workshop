package _07_richstrings

import org.junit.Before
import org.junit.Test
import static org.junit.Assert.*

class MovieHtmlGeneratorTest {

	MovieHtmlGenerator generator

	@Before
	def void setUp() {
		this.generator = new MovieHtmlGenerator
	}

	// TODO Implement method printMovies() in class MovieHtmlGenerator and make the test pass.
	@Test
	def void testHtml() {
		assertEquals('''
			<!DOCTYPE html>
			<html>
			<head>
				<title>A lot of movies and TV shows!</title>
			</head>
			<body>
				<h1>Must watch!</h1>
					<ul>
						<li><b>&quot;Rome&quot;</b> (2005). Rating: 9.2</li>
						<li><b>Witness for the Prosecution</b> (1957). Rating: 8.4</li>
						<li><b>Star Trek</b> (2009). Rating: 8.1</li>
						<li><b>The Grapes of Wrath</b> (1940). Rating: 8.3</li>
						<li><b>Oldeuboi</b> (2003). Rating: 8.4</li>
						<li><b>The Graduate</b> (1967). Rating: 8.2</li>
						<li><b>Touch of Evil</b> (1958). Rating: 8.3</li>
						<li><b>&quot;The Office&quot;</b> (2005). Rating: 9.2</li>
						<li><b>Le samouraï</b> (1967). Rating: 8.2</li>
						<li><b>Nosferatu, eine Symphonie des Grauens</b> (1922). Rating: 8.1</li>
						<li><b>Taegukgi hwinalrimyeo</b> (2004). Rating: 8.2</li>
						<li><b>Blade Runner</b> (1982). Rating: 8.3</li>
						<li><b>The Dark Knight</b> (2008). Rating: 8.9</li>
						<li><b>&quot;Star Trek&quot;</b> (1966). Rating: 8.6</li>
						<li><b>&quot;Angels in America&quot;</b> (2003). Rating: 8.2</li>
						<li><b>Idi i smotri</b> (1985). Rating: 8.2</li>
						<li><b>Eskiya</b> (1996). Rating: 8.3</li>
						<li><b>East of Eden</b> (1955). Rating: 8.1</li>
						<li><b>&quot;Star Trek: The Next Generation&quot;</b> (1987). Rating: 8.8</li>
						<li><b>Laura</b> (1944). Rating: 8.2</li>
						<li><b>&quot;Deadwood&quot;</b> (2004). Rating: 9.2</li>
						<li><b>&quot;Friday Night Lights&quot;</b> (2006). Rating: 8.7</li>
						<li><b>The Bridge on the River Kwai</b> (1957). Rating: 8.4</li>
						<li><b>The Philadelphia Story</b> (1940). Rating: 8.1</li>
						<li><b>Cidade de Deus</b> (2002). Rating: 8.8</li>
						<li><b>Trois couleurs: Rouge</b> (1994). Rating: 8.1</li>
						<li><b>WALL·E</b> (2008). Rating: 8.5</li>
						<li><b>&quot;CSI: Crime Scene Investigation&quot;</b> (2000). Rating: 8.3</li>
						<li><b>Kaze no tani no Naushika</b> (1984). Rating: 8.1</li>
						<li><b>&quot;Family Guy&quot;</b> (1999). Rating: 8.7</li>
						<li><b>Taare Zameen Par</b> (2007). Rating: 8.3</li>
						<li><b>American History X</b> (1998). Rating: 8.6</li>
						<li><b>The Wizard of Oz</b> (1939). Rating: 8.3</li>
						<li><b>Star Wars: Episode V - The Empire Strikes Back</b> (1980). Rating: 8.8</li>
						<li><b>Hotaru no haka</b> (1988). Rating: 8.3</li>
						<li><b>Tenkû no shiro Rapyuta</b> (1986). Rating: 8.1</li>
						<li><b>Notorious</b> (1946). Rating: 8.3</li>
						<li><b>Gandhi</b> (1982). Rating: 8.2</li>
						<li><b>Yip Man</b> (2008). Rating: 8.2</li>
						<li><b>Twelve Monkeys</b> (1995). Rating: 8.1</li>
						<li><b>Duck Soup</b> (1933). Rating: 8.1</li>
						<li><b>Inherit the Wind</b> (1960). Rating: 8.2</li>
						<li><b>A Night at the Opera</b> (1935). Rating: 8.1</li>
						<li><b>&quot;Community&quot;</b> (2009). Rating: 9.0</li>
						<li><b>Se7en</b> (1995). Rating: 8.7</li>
						<li><b>There Will Be Blood</b> (2007). Rating: 8.2</li>
						<li><b>Lagaan: Once Upon a Time in India</b> (2001). Rating: 8.1</li>
						<li><b>The Silence of the Lambs</b> (1991). Rating: 8.7</li>
						<li><b>The Gold Rush</b> (1925). Rating: 8.3</li>
						<li><b>The Fog of War: Eleven Lessons from the Life of Robert S. McNamara</b> (2003). Rating: 8.2</li>
						<li><b>Shichinin no samurai</b> (1954). Rating: 8.8</li>
						<li><b>The Lord of the Rings: The Return of the King</b> (2003). Rating: 8.8</li>
						<li><b>&quot;Dr. Horrible&#39;s Sing-Along Blog&quot;</b> (2008). Rating: 8.9</li>
						<li><b>Harvey</b> (1950). Rating: 8.1</li>
						<li><b>The Treasure of the Sierra Madre</b> (1948). Rating: 8.5</li>
						<li><b>Alien</b> (1979). Rating: 8.5</li>
						<li><b>Patton</b> (1970). Rating: 8.1</li>
						<li><b>The Best Years of Our Lives</b> (1946). Rating: 8.3</li>
						<li><b>Smultronstället</b> (1957). Rating: 8.4</li>
						<li><b>&quot;Law &amp; Order: Special Victims Unit&quot;</b> (1999). Rating: 8.5</li>
						<li><b>Bowling for Columbine</b> (2002). Rating: 8.2</li>
						<li><b>Mononoke-hime</b> (1997). Rating: 8.4</li>
						<li><b>Sunrise: A Song of Two Humans</b> (1927). Rating: 8.4</li>
						<li><b>Cool Hand Luke</b> (1967). Rating: 8.3</li>
						<li><b>Batman Begins</b> (2005). Rating: 8.3</li>
						<li><b>The Matrix</b> (1999). Rating: 8.7</li>
						<li><b>The Thin Man</b> (1934). Rating: 8.1</li>
						<li><b>The Wild Bunch</b> (1969). Rating: 8.1</li>
						<li><b>&quot;Lost&quot;</b> (2004). Rating: 8.6</li>
						<li><b>Big Fish</b> (2003). Rating: 8.1</li>
						<li><b>V for Vendetta</b> (2006). Rating: 8.2</li>
						<li><b>Platoon</b> (1986). Rating: 8.2</li>
						<li><b>Koyaanisqatsi</b> (1982). Rating: 8.1</li>
						<li><b>Back to the Future</b> (1985). Rating: 8.4</li>
						<li><b>Det sjunde inseglet</b> (1957). Rating: 8.4</li>
						<li><b>&quot;My Name Is Earl&quot;</b> (2005). Rating: 8.5</li>
						<li><b>Gone with the Wind</b> (1939). Rating: 8.2</li>
						<li><b>The Last Picture Show</b> (1971). Rating: 8.1</li>
						<li><b>&quot;Buffy the Vampire Slayer&quot;</b> (1997). Rating: 8.4</li>
						<li><b>Mou gaan dou</b> (2002). Rating: 8.1</li>
						<li><b>Requiem for a Dream</b> (2000). Rating: 8.5</li>
						<li><b>The Green Mile</b> (1999). Rating: 8.4</li>
						<li><b>Au revoir les enfants</b> (1987). Rating: 8.1</li>
						<li><b>&quot;Freaks and Geeks&quot;</b> (1999). Rating: 9.5</li>
						<li><b>Stalag 17</b> (1953). Rating: 8.2</li>
						<li><b>&quot;Psych&quot;</b> (2006). Rating: 8.7</li>
						<li><b>The Adventures of Robin Hood</b> (1938). Rating: 8.1</li>
						<li><b>Apocalypse Now</b> (1979). Rating: 8.6</li>
						<li><b>Nuovo Cinema Paradiso</b> (1988). Rating: 8.5</li>
						<li><b>Roman Holiday</b> (1953). Rating: 8.1</li>
						<li><b>North by Northwest</b> (1959). Rating: 8.6</li>
						<li><b>&quot;Jericho&quot;</b> (2006). Rating: 8.2</li>
						<li><b>Judgment at Nuremberg</b> (1961). Rating: 8.3</li>
						<li><b>Amores perros</b> (2000). Rating: 8.2</li>
						<li><b>The Elephant Man</b> (1980). Rating: 8.4</li>
						<li><b>La grande illusion</b> (1937). Rating: 8.2</li>
						<li><b>&quot;Married with Children&quot;</b> (1987). Rating: 8.6</li>
						<li><b>Le notti di Cabiria</b> (1957). Rating: 8.3</li>
						<li><b>Ran</b> (1985). Rating: 8.3</li>
						<li><b>Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb</b> (1964). Rating: 8.6</li>
						<li><b>Mary and Max</b> (2009). Rating: 8.2</li>
						<li><b>Das Leben der Anderen</b> (2006). Rating: 8.5</li>
						<li><b>&quot;Spartacus: Blood and Sand&quot;</b> (2010). Rating: 8.8</li>
						<li><b>&quot;Prison Break&quot;</b> (2005). Rating: 8.8</li>
						<li><b>Lock, Stock and Two Smoking Barrels</b> (1998). Rating: 8.2</li>
						<li><b>Da hong deng long gao gao gua</b> (1991). Rating: 8.2</li>
						<li><b>&quot;South Park&quot;</b> (1997). Rating: 9.3</li>
						<li><b>El laberinto del fauno</b> (2006). Rating: 8.4</li>
						<li><b>The General</b> (1926). Rating: 8.4</li>
						<li><b>All Quiet on the Western Front</b> (1930). Rating: 8.2</li>
						<li><b>Strangers on a Train</b> (1951). Rating: 8.3</li>
						<li><b>Ikiru</b> (1952). Rating: 8.3</li>
						<li><b>On the Waterfront</b> (1954). Rating: 8.4</li>
						<li><b>Before Sunrise</b> (1995). Rating: 8.1</li>
						<li><b>Toy Story 3</b> (2010). Rating: 8.7</li>
						<li><b>City Lights</b> (1931). Rating: 8.6</li>
						<li><b>The Manchurian Candidate</b> (1962). Rating: 8.2</li>
						<li><b>Bronenosets Potyomkin</b> (1925). Rating: 8.1</li>
						<li><b>How the Grinch Stole Christmas!</b> (1966). Rating: 8.4</li>
						<li><b>&quot;Carnivàle&quot;</b> (2003). Rating: 8.9</li>
						<li><b>Snatch.</b> (2000). Rating: 8.3</li>
						<li><b>Good Will Hunting</b> (1997). Rating: 8.1</li>
						<li><b>&quot;Dragon Ball Z&quot;</b> (1989). Rating: 8.9</li>
						<li><b>The Exorcist</b> (1973). Rating: 8.1</li>
						<li><b>His Girl Friday</b> (1940). Rating: 8.1</li>
						<li><b>Terminator 2: Judgment Day</b> (1991). Rating: 8.6</li>
						<li><b>Das Boot</b> (1981). Rating: 8.5</li>
						<li><b>Eternal Sunshine of the Spotless Mind</b> (2004). Rating: 8.5</li>
						<li><b>Rocky</b> (1976). Rating: 8.1</li>
						<li><b>Full Metal Jacket</b> (1987). Rating: 8.4</li>
						<li><b>Groundhog Day</b> (1993). Rating: 8.2</li>
						<li><b>The Night of the Hunter</b> (1955). Rating: 8.2</li>
						<li><b>Sin City</b> (2005). Rating: 8.3</li>
						<li><b>The Killing</b> (1956). Rating: 8.2</li>
						<li><b>Black Swan</b> (2010). Rating: 8.5</li>
						<li><b>Rope</b> (1948). Rating: 8.1</li>
						<li><b>In Bruges</b> (2008). Rating: 8.1</li>
						<li><b>Unforgiven</b> (1992). Rating: 8.3</li>
						<li><b>Before Sunset</b> (2004). Rating: 8.1</li>
						<li><b>Rang De Basanti</b> (2006). Rating: 8.3</li>
						<li><b>Dog Day Afternoon</b> (1975). Rating: 8.1</li>
						<li><b>&quot;Stargate SG-1&quot;</b> (1997). Rating: 8.5</li>
						<li><b>Léon</b> (1994). Rating: 8.6</li>
						<li><b>2001: A Space Odyssey</b> (1968). Rating: 8.4</li>
						<li><b>Babam Ve Oglum</b> (2005). Rating: 8.7</li>
						<li><b>Ben-Hur</b> (1959). Rating: 8.2</li>
						<li><b>The Lost Weekend</b> (1945). Rating: 8.1</li>
						<li><b>&quot;Veronica Mars&quot;</b> (2004). Rating: 8.6</li>
						<li><b>&quot;Angel&quot;</b> (1999). Rating: 8.4</li>
						<li><b>The Lady Vanishes</b> (1938). Rating: 8.1</li>
						<li><b>To Kill a Mockingbird</b> (1962). Rating: 8.5</li>
						<li><b>Million Dollar Baby</b> (2004). Rating: 8.2</li>
						<li><b>Underground</b> (1995). Rating: 8.1</li>
						<li><b>Rashômon</b> (1950). Rating: 8.5</li>
						<li><b>Rio Bravo</b> (1959). Rating: 8.1</li>
						<li><b>The Incredibles</b> (2004). Rating: 8.1</li>
						<li><b>Double Indemnity</b> (1944). Rating: 8.6</li>
						<li><b>&quot;Futurama&quot;</b> (1999). Rating: 9.1</li>
						<li><b>La dolce vita</b> (1960). Rating: 8.1</li>
						<li><b>Toy Story</b> (1995). Rating: 8.2</li>
						<li><b>The Wrestler</b> (2008). Rating: 8.2</li>
						<li><b>&quot;House M.D.&quot;</b> (2004). Rating: 8.9</li>
						<li><b>&quot;Mad Men&quot;</b> (2007). Rating: 9.0</li>
						<li><b>&quot;It&#39;s Always Sunny in Philadelphia&quot;</b> (2005). Rating: 9.5</li>
						<li><b>Sunset Blvd.</b> (1950). Rating: 8.7</li>
						<li><b>The Departed</b> (2006). Rating: 8.5</li>
						<li><b>A Charlie Brown Christmas</b> (1965). Rating: 8.3</li>
						<li><b>&quot;Six Feet Under&quot;</b> (2001). Rating: 9.2</li>
						<li><b>&quot;The X Files&quot;</b> (1993). Rating: 9.0</li>
						<li><b>&quot;Malcolm in the Middle&quot;</b> (2000). Rating: 8.4</li>
						<li><b>Fa yeung nin wa</b> (2000). Rating: 8.1</li>
						<li><b>The Great Dictator</b> (1940). Rating: 8.4</li>
						<li><b>&quot;Scrubs&quot;</b> (2001). Rating: 9.0</li>
						<li><b>Heat</b> (1995). Rating: 8.3</li>
						<li><b>Pulp Fiction</b> (1994). Rating: 9.0</li>
						<li><b>White Heat</b> (1949). Rating: 8.2</li>
						<li><b>&quot;The Fresh Prince of Bel-Air&quot;</b> (1990). Rating: 8.2</li>
						<li><b>Ratatouille</b> (2007). Rating: 8.1</li>
						<li><b>Hauru no ugoku shiro</b> (2004). Rating: 8.1</li>
						<li><b>The Deer Hunter</b> (1978). Rating: 8.2</li>
						<li><b>Great Expectations</b> (1946). Rating: 8.1</li>
						<li><b>Paper Moon</b> (1973). Rating: 8.1</li>
						<li><b>Rosemary&#39;s Baby</b> (1968). Rating: 8.1</li>
						<li><b>Star Wars: Episode VI - Return of the Jedi</b> (1983). Rating: 8.3</li>
						<li><b>The Godfather: Part II</b> (1974). Rating: 9.0</li>
						<li><b>Once Upon a Time in America</b> (1984). Rating: 8.4</li>
						<li><b>&quot;Extras&quot;</b> (2005). Rating: 8.9</li>
						<li><b>Schindler&#39;s List</b> (1993). Rating: 8.9</li>
						<li><b>Bom yeoreum gaeul gyeoul geurigo bom</b> (2003). Rating: 8.1</li>
						<li><b>Modern Times</b> (1936). Rating: 8.5</li>
						<li><b>&quot;The Sopranos&quot;</b> (1999). Rating: 9.4</li>
						<li><b>The King of Kong</b> (2007). Rating: 8.2</li>
						<li><b>Aliens</b> (1986). Rating: 8.5</li>
						<li><b>Mar adentro</b> (2004). Rating: 8.1</li>
						<li><b>&quot;The King of Queens&quot;</b> (1998). Rating: 8.1</li>
						<li><b>&quot;The IT Crowd&quot;</b> (2006). Rating: 8.9</li>
						<li><b>&quot;The Walking Dead&quot;</b> (2010). Rating: 8.9</li>
						<li><b>The Big Sleep</b> (1946). Rating: 8.2</li>
						<li><b>The Bourne Ultimatum</b> (2007). Rating: 8.2</li>
						<li><b>Hotel Rwanda</b> (2004). Rating: 8.3</li>
						<li><b>Butch Cassidy and the Sundance Kid</b> (1969). Rating: 8.2</li>
						<li><b>Låt den rätte komma in</b> (2008). Rating: 8.1</li>
						<li><b>La haine</b> (1995). Rating: 8.1</li>
						<li><b>The Third Man</b> (1949). Rating: 8.5</li>
						<li><b>&quot;Fawlty Towers&quot;</b> (1975). Rating: 9.3</li>
						<li><b>Sen to Chihiro no kamikakushi</b> (2001). Rating: 8.6</li>
						<li><b>&quot;Skins&quot;</b> (2007). Rating: 8.7</li>
						<li><b>It&#39;s a Wonderful Life</b> (1946). Rating: 8.7</li>
						<li><b>Festen</b> (1998). Rating: 8.1</li>
						<li><b>Vozvrashchenie</b> (2003). Rating: 8.1</li>
						<li><b>The Man Who Shot Liberty Valance</b> (1962). Rating: 8.1</li>
						<li><b>The Shawshank Redemption</b> (1994). Rating: 9.2</li>
						<li><b>No Pain, No Gain</b> (2005). Rating: 8.6</li>
						<li><b>The Sting</b> (1973). Rating: 8.4</li>
						<li><b>Chinatown</b> (1974). Rating: 8.5</li>
						<li><b>Fargo</b> (1996). Rating: 8.3</li>
						<li><b>Rebecca</b> (1940). Rating: 8.4</li>
						<li><b>Finding Nemo</b> (2003). Rating: 8.2</li>
						<li><b>How to Train Your Dragon</b> (2010). Rating: 8.2</li>
						<li><b>&quot;Bones&quot;</b> (2005). Rating: 8.3</li>
						<li><b>3 Idiots</b> (2009). Rating: 8.3</li>
						<li><b>Fight Club</b> (1999). Rating: 8.8</li>
						<li><b>&quot;Doctor Who&quot;</b> (2005). Rating: 8.8</li>
						<li><b>Lawrence of Arabia</b> (1962). Rating: 8.5</li>
						<li><b>&quot;The Office&quot;</b> (2001). Rating: 9.2</li>
						<li><b>Monty Python and the Holy Grail</b> (1975). Rating: 8.4</li>
						<li><b>Gran Torino</b> (2008). Rating: 8.4</li>
						<li><b>The Sixth Sense</b> (1999). Rating: 8.2</li>
						<li><b>Zeitgeist</b> (2007). Rating: 8.5</li>
						<li><b>Amadeus</b> (1984). Rating: 8.4</li>
						<li><b>Kumonosu-jô</b> (1957). Rating: 8.1</li>
						<li><b>The Lord of the Rings: The Fellowship of the Ring</b> (2001). Rating: 8.8</li>
						<li><b>Avatar</b> (2009). Rating: 8.2</li>
						<li><b>The Shining</b> (1980). Rating: 8.5</li>
						<li><b>Arsenic and Old Lace</b> (1944). Rating: 8.1</li>
						<li><b>Jean de Florette</b> (1986). Rating: 8.1</li>
						<li><b>Who&#39;s Afraid of Virginia Woolf?</b> (1966). Rating: 8.2</li>
						<li><b>&quot;Generation Kill&quot;</b> (2008). Rating: 8.8</li>
						<li><b>Forrest Gump</b> (1994). Rating: 8.7</li>
						<li><b>Stalker</b> (1979). Rating: 8.1</li>
						<li><b>The Cove</b> (2009). Rating: 8.5</li>
						<li><b>&quot;Fringe&quot;</b> (2008). Rating: 8.7</li>
						<li><b>The Usual Suspects</b> (1995). Rating: 8.7</li>
						<li><b>Network</b> (1976). Rating: 8.1</li>
						<li><b>Der Untergang</b> (2004). Rating: 8.4</li>
						<li><b>Sleuth</b> (1972). Rating: 8.1</li>
						<li><b>Fanny och Alexander</b> (1982). Rating: 8.2</li>
						<li><b>&quot;Criminal Minds&quot;</b> (2005). Rating: 8.4</li>
						<li><b>Dial M for Murder</b> (1954). Rating: 8.1</li>
						<li><b>La vita è bella</b> (1997). Rating: 8.5</li>
						<li><b>&quot;The Lost Room&quot;</b> (2006). Rating: 8.3</li>
						<li><b>Les quatre cents coups</b> (1959). Rating: 8.2</li>
						<li><b>Metropolis</b> (1927). Rating: 8.4</li>
						<li><b>&quot;Modern Family&quot;</b> (2009). Rating: 9.1</li>
						<li><b>&quot;Battlestar Galactica&quot;</b> (2004). Rating: 9.0</li>
						<li><b>Raging Bull</b> (1980). Rating: 8.4</li>
						<li><b>&quot;The Pacific&quot;</b> (2010). Rating: 8.4</li>
						<li><b>La strada</b> (1954). Rating: 8.2</li>
						<li><b>It Happened One Night</b> (1934). Rating: 8.3</li>
						<li><b>&quot;The Tudors&quot;</b> (2007). Rating: 8.2</li>
						<li><b>Vertigo</b> (1958). Rating: 8.5</li>
						<li><b>&quot;Band of Brothers&quot;</b> (2001). Rating: 9.6</li>
						<li><b>Vincent</b> (1982). Rating: 8.4</li>
						<li><b>&quot;How I Met Your Mother&quot;</b> (2005). Rating: 8.8</li>
						<li><b>Kakushi-toride no san-akunin</b> (1958). Rating: 8.1</li>
						<li><b>Inception</b> (2010). Rating: 8.9</li>
						<li><b>Sicko</b> (2007). Rating: 8.2</li>
						<li><b>12 Angry Men</b> (1957). Rating: 8.9</li>
						<li><b>Ed Wood</b> (1994). Rating: 8.1</li>
						<li><b>The Maltese Falcon</b> (1941). Rating: 8.4</li>
						<li><b>Reservoir Dogs</b> (1992). Rating: 8.4</li>
						<li><b>C&#39;era una volta il West</b> (1968). Rating: 8.8</li>
						<li><b>La passion de Jeanne d&#39;Arc</b> (1928). Rating: 8.3</li>
						<li><b>A Clockwork Orange</b> (1971). Rating: 8.5</li>
						<li><b>The King&#39;s Speech</b> (2010). Rating: 8.4</li>
						<li><b>&quot;Supernatural&quot;</b> (2005). Rating: 8.9</li>
						<li><b>Gladiator</b> (2000). Rating: 8.4</li>
						<li><b>Donnie Darko</b> (2001). Rating: 8.2</li>
						<li><b>&quot;Gilmore Girls&quot;</b> (2000). Rating: 8.1</li>
						<li><b>Scarface</b> (1983). Rating: 8.2</li>
						<li><b>The Princess Bride</b> (1987). Rating: 8.1</li>
						<li><b>The Lion in Winter</b> (1968). Rating: 8.1</li>
						<li><b>Annie Hall</b> (1977). Rating: 8.3</li>
						<li><b>&quot;Pride and Prejudice&quot;</b> (1995). Rating: 9.2</li>
						<li><b>&quot;Spaced&quot;</b> (1999). Rating: 9.3</li>
						<li><b>High Noon</b> (1952). Rating: 8.3</li>
						<li><b>Barry Lyndon</b> (1975). Rating: 8.1</li>
						<li><b>District 9</b> (2009). Rating: 8.2</li>
						<li><b>Le scaphandre et le papillon</b> (2007). Rating: 8.1</li>
						<li><b>Braveheart</b> (1995). Rating: 8.4</li>
						<li><b>The Searchers</b> (1956). Rating: 8.1</li>
						<li><b>The Terminator</b> (1984). Rating: 8.1</li>
						<li><b>Yeopgijeogin geunyeo</b> (2001). Rating: 8.2</li>
						<li><b>Taxi Driver</b> (1976). Rating: 8.6</li>
						<li><b>Bringing Up Baby</b> (1938). Rating: 8.1</li>
						<li><b>Okuribito</b> (2008). Rating: 8.1</li>
						<li><b>&quot;The Wire&quot;</b> (2002). Rating: 9.7</li>
						<li><b>Jaws</b> (1975). Rating: 8.3</li>
						<li><b>Aguirre, der Zorn Gottes</b> (1972). Rating: 8.1</li>
						<li><b>Raiders of the Lost Ark</b> (1981). Rating: 8.7</li>
						<li><b>Paths of Glory</b> (1957). Rating: 8.6</li>
						<li><b>Kill Bill: Vol. 1</b> (2003). Rating: 8.2</li>
						<li><b>The Prestige</b> (2006). Rating: 8.4</li>
						<li><b>Citizen Kane</b> (1941). Rating: 8.6</li>
						<li><b>Wallace and Gromit in A Close Shave</b> (1995). Rating: 8.3</li>
						<li><b>&quot;Seinfeld&quot;</b> (1990). Rating: 9.3</li>
						<li><b>The Lion King</b> (1994). Rating: 8.2</li>
						<li><b>&quot;Firefly&quot;</b> (2002). Rating: 9.4</li>
						<li><b>&quot;Avatar: The Last Airbender&quot;</b> (2005). Rating: 9.2</li>
						<li><b>Psycho</b> (1960). Rating: 8.7</li>
						<li><b>The Hustler</b> (1961). Rating: 8.2</li>
						<li><b>Kind Hearts and Coronets</b> (1949). Rating: 8.2</li>
						<li><b>Trainspotting</b> (1996). Rating: 8.2</li>
						<li><b>No Country for Old Men</b> (2007). Rating: 8.3</li>
						<li><b>Yôjinbô</b> (1961). Rating: 8.4</li>
						<li><b>&quot;The West Wing&quot;</b> (1999). Rating: 8.9</li>
						<li><b>&quot;Frasier&quot;</b> (1993). Rating: 8.4</li>
						<li><b>Slumdog Millionaire</b> (2008). Rating: 8.3</li>
						<li><b>La battaglia di Algeri</b> (1966). Rating: 8.3</li>
						<li><b>Le salaire de la peur</b> (1953). Rating: 8.3</li>
						<li><b>8½</b> (1963). Rating: 8.2</li>
						<li><b>&quot;Oz&quot;</b> (1997). Rating: 9.2</li>
						<li><b>Life of Brian</b> (1979). Rating: 8.2</li>
						<li><b>&quot;Battlestar Galactica&quot;</b> (2003). Rating: 8.3</li>
						<li><b>&quot;Dead Like Me&quot;</b> (2003). Rating: 8.7</li>
						<li><b>Inglourious Basterds</b> (2009). Rating: 8.4</li>
						<li><b>Hable con ella</b> (2002). Rating: 8.1</li>
						<li><b>Tonari no Totoro</b> (1988). Rating: 8.2</li>
						<li><b>The Lord of the Rings: The Two Towers</b> (2002). Rating: 8.7</li>
						<li><b>Shadow of a Doubt</b> (1943). Rating: 8.1</li>
						<li><b>Rear Window</b> (1954). Rating: 8.7</li>
						<li><b>Star Wars</b> (1977). Rating: 8.8</li>
						<li><b>Casablanca</b> (1942). Rating: 8.8</li>
						<li><b>Bin-jip</b> (2004). Rating: 8.1</li>
						<li><b>&quot;Arrested Development&quot;</b> (2003). Rating: 9.6</li>
						<li><b>M</b> (1931). Rating: 8.6</li>
						<li><b>Goodfellas</b> (1990). Rating: 8.8</li>
						<li><b>The Great Escape</b> (1963). Rating: 8.3</li>
						<li><b>Brief Encounter</b> (1945). Rating: 8.2</li>
						<li><b>Stand by Me</b> (1986). Rating: 8.2</li>
						<li><b>American Beauty</b> (1999). Rating: 8.6</li>
						<li><b>Die Hard</b> (1988). Rating: 8.3</li>
						<li><b>Saving Private Ryan</b> (1998). Rating: 8.5</li>
						<li><b>Indiana Jones and the Last Crusade</b> (1989). Rating: 8.3</li>
						<li><b>The Kid</b> (1921). Rating: 8.3</li>
						<li><b>In Cold Blood</b> (1967). Rating: 8.1</li>
						<li><b>&quot;Friends&quot;</b> (1994). Rating: 8.9</li>
						<li><b>Casino</b> (1995). Rating: 8.1</li>
						<li><b>The Thing</b> (1982). Rating: 8.2</li>
						<li><b>A Streetcar Named Desire</b> (1951). Rating: 8.1</li>
						<li><b>Andrey Rublyov</b> (1966). Rating: 8.2</li>
						<li><b>Anatomy of a Murder</b> (1959). Rating: 8.1</li>
						<li><b>&quot;Dexter&quot;</b> (2006). Rating: 9.3</li>
						<li><b>The Apartment</b> (1960). Rating: 8.4</li>
						<li><b>&quot;That &#39;70s Show&quot;</b> (1998). Rating: 8.5</li>
						<li><b>Up</b> (2009). Rating: 8.4</li>
						<li><b>&quot;24&quot;</b> (2001). Rating: 8.8</li>
						<li><b>&quot;The Big Bang Theory&quot;</b> (2007). Rating: 8.8</li>
						<li><b>Le fabuleux destin d&#39;Amélie Poulain</b> (2001). Rating: 8.6</li>
						<li><b>&quot;Planet Earth&quot;</b> (2006). Rating: 9.8</li>
						<li><b>Into the Wild</b> (2007). Rating: 8.2</li>
						<li><b>Ladri di biciclette</b> (1948). Rating: 8.5</li>
						<li><b>The Social Network</b> (2010). Rating: 8.1</li>
						<li><b>El secreto de sus ojos</b> (2009). Rating: 8.3</li>
						<li><b>L.A. Confidential</b> (1997). Rating: 8.4</li>
						<li><b>All About Eve</b> (1950). Rating: 8.5</li>
						<li><b>The Pianist</b> (2002). Rating: 8.5</li>
						<li><b>The Godfather</b> (1972). Rating: 9.2</li>
						<li><b>One Flew Over the Cuckoo&#39;s Nest</b> (1975). Rating: 8.9</li>
						<li><b>&quot;Nip/Tuck&quot;</b> (2003). Rating: 8.3</li>
						<li><b>Singin&#39; in the Rain</b> (1952). Rating: 8.4</li>
						<li><b>Salinui chueok</b> (2003). Rating: 8.1</li>
						<li><b>Wallace &amp; Gromit in The Wrong Trousers</b> (1993). Rating: 8.6</li>
						<li><b>Baraka</b> (1992). Rating: 8.3</li>
						<li><b>Per qualche dollaro in più</b> (1965). Rating: 8.3</li>
						<li><b>&quot;MythBusters&quot;</b> (2003). Rating: 9.0</li>
						<li><b>Il buono, il brutto, il cattivo.</b> (1966). Rating: 9.0</li>
						<li><b>Mr. Smith Goes to Washington</b> (1939). Rating: 8.4</li>
						<li><b>Some Like It Hot</b> (1959). Rating: 8.4</li>
						<li><b>Manhattan</b> (1979). Rating: 8.1</li>
						<li><b>&quot;Twin Peaks&quot;</b> (1990). Rating: 9.4</li>
						<li><b>&quot;Glee&quot;</b> (2009). Rating: 8.2</li>
						<li><b>Memento</b> (2000). Rating: 8.7</li>
						<li><b>Out of the Past</b> (1947). Rating: 8.1</li>
						<li><b>Exit Through the Gift Shop</b> (2010). Rating: 8.2</li>
						<li><b>Les diaboliques</b> (1955). Rating: 8.3</li>
						<li><b>Persona</b> (1966). Rating: 8.2</li>
						<li><b>The Big Lebowski</b> (1998). Rating: 8.2</li>
						<li><b>&quot;Entourage&quot;</b> (2004). Rating: 9.1</li>
					</ul>
			</body>
			</html>
		'''.toString, generator.printMovies())
	}
}

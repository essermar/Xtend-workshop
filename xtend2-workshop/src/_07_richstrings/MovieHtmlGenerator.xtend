package _07_richstrings

import com.google.common.escape.Escaper
import com.google.common.html.HtmlEscapers
import java.util.Set
import java.io.FileReader
import org.eclipse.xtend.lib.annotations.Data
import static extension com.google.common.io.CharStreams.*

/** Based on class {@code Movies} from Xtend's movies example */
class MovieHtmlGenerator {

	val extension Escaper htmlEscaper = HtmlEscapers.htmlEscaper

	def readMovies() {
		val url = MovieHtmlGenerator.getResource('data.csv')
		return new FileReader(url.file).readLines.map [ line |
			val segments = line.split('  ').iterator
			return new Movie(
				segments.next,
				Integer.parseInt(segments.next),
				Double.parseDouble(segments.next),
				Long.parseLong(segments.next),
				segments.toSet
			)
		]
	}

	// TODO: Print a list of all the movies with a rating higher than 8!
	def String printMovies() {
		val movies = readMovies()
		// println("Not implemented, yet.")

		val html = '''
			<!DOCTYPE html>
			<html>
			<head>
				<title>A lot of movies and TV shows!</title>
			</head>
			<body>
				<h1>Must watch!</h1>
					<ul>
						«FOR movie : movies.filter[rating > 8]»
							<li><b>«movie.title.escape()»</b> («movie.year»). Rating: «movie.rating»</li>
				 		 «ENDFOR»
					</ul>
			</body>
			</html>
		'''
		println(html)
	}
}

@Data class Movie {
	String title
	int year
	double rating
	long numberOfVotes
	Set<String> categories
}

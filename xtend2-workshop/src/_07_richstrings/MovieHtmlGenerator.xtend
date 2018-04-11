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
		println("Not implemented, yet.")

	}
}

@Data class Movie {
	String title
	int year
	double rating
	long numberOfVotes
	Set<String> categories
}

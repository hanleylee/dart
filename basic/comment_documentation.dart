// 这是单行注释

/* 这是...
   一个
   多行的
   注释
   */

// MARK: For historical reasons, dart doc supports two syntaxes of doc comments: /// (“C# style”) and /** ... */ (“JavaDoc style”). We prefer ///
// because it’s more compact. /** and */ add two content-free lines to a multiline doc comment. The /// syntax is also easier to read in some
// situations, such as when a doc comment contains a bulleted list that uses * to mark list items.

/// The number of characters in this chunk when unsplit
int get length => 1;

/// The current day of the week, where `0` is Sunday.
int weekday = 1;

// Start your doc comment with a brief, user-centric description ending with a period. A sentence fragment is often sufficient. Provide just enough
// context for the reader to orient themselves and decide if they should keep reading or look elsewhere for the solution to their problem.

/// MARK: Deletes the file at [path] from the file system
void delete(String path) {}

// MARK: Add a blank line after the first sentence to split it out into its own paragraph. If more than a single sentence of explanation is useful, put the
// rest in later paragraphs.

/// Deletes the file at [path].
///
/// Throws an [IOError] if the file could not be found. Throws a
/// [PermissionError] if the file is present but could not be deleted.
void delete2(String path) {}

// MARK: CONSIDER including code samples in doc comments.

/// Returns the lesser of two numbers.
///
/// ```dart
/// min(5, 3) == 3
/// ```
num min(num a, num b) => a;

// MARK: We can use markdown inside documentation

/// This is a paragraph of regular text.
///
/// This sentence has *two* _emphasized_ words (italics) and **two**
/// __strong__ ones (bold).
///
/// A blank line creates a separate paragraph. It has some `inline code`
/// delimited using backticks.
///
/// * Unordered lists.
/// * Look like ASCII bullet lists.
/// * You can also use `-` or `+`.
///
/// 1. Numbered lists.
/// 2. Are, well, numbered.
/// 1. But the values don't matter.
///
///     * You can nest lists too.
///     * They must be indented at least 4 spaces.
///     * (Well, 5 including the space after `///`.)
///
/// Code blocks are fenced in triple backticks:
///
/// ```dart
/// this.code
///     .will
///     .retain(its, formatting);
/// ```
///
/// The code language (for syntax highlighting) defaults to Dart. You can
/// specify it by putting the name of the language after the opening backticks:
///
/// ```html
/// <h1>HTML is magical!</h1>
/// ```
///
/// Links can be:
///
/// * https://www.just-a-bare-url.com
/// * [with the URL inline](https://google.com)
/// * [or separated out][ref link]
///
/// [ref link]: https://google.com
///
/// # A Header
///
/// ## A subheader
///
/// ### A subsubheader
///
/// #### If you need this many levels of headers, you're doing it wrong


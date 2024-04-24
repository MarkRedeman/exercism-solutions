use std::collections::HashSet;
use std::iter::Iterator;

fn to_lowercase_chars(s: &str) -> Vec<char> {
    s.chars().flat_map(char::to_lowercase).collect()
}

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &'a [&'a str]) -> HashSet<&'a str> {
    possible_anagrams
        .iter()
        .filter(|&other_word| {
            let mut word_chars = to_lowercase_chars(word);
            let mut other_word_chars = to_lowercase_chars(other_word);

            if word_chars == other_word_chars {
                return false;
            }

            word_chars.sort();
            other_word_chars.sort();

            word_chars == other_word_chars
        })
        .cloned()
        .collect()
}

use unicode_reverse::reverse_grapheme_clusters_in_place;

pub fn reverse(input: &str) -> String {
    // Original solution without grapheme clusters
    // input.chars().rev().collect()

    // Solution using unicode_reverse
    let mut input = input.to_string();
    reverse_grapheme_clusters_in_place(&mut input);
    input
}

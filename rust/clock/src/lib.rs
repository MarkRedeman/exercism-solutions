use std::fmt;

#[derive(Debug, PartialEq)]
pub struct Clock {
    total_minutes: i32,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Self::from_total_minutes(hours.rem_euclid(24) * 60 + minutes)
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Self::from_total_minutes(self.total_minutes + minutes)
    }

    fn from_total_minutes(total_minutes: i32) -> Self {
        Self {
            total_minutes: total_minutes.rem_euclid(24 * 60),
        }
    }

    fn hours(&self) -> i32 {
        (self.total_minutes / 60).rem_euclid(24)
    }

    fn minutes(&self) -> i32 {
        self.total_minutes.rem_euclid(60)
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(
            f,
            "{}:{}",
            format!("{:02}", self.hours()),
            format!("{:02}", self.minutes())
        )
    }
}

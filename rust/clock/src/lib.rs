use std::fmt;

pub struct Clock {
    hours: i32,
    minutes: i32,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        let total_minutes = (hours.rem_euclid(24) * 60 + minutes).rem_euclid(24 * 60);

        Self {
            hours: (total_minutes / 60).rem_euclid(24),
            minutes: total_minutes.rem_euclid(60),
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::new(self.hours, self.minutes + minutes)
    }
}

impl PartialEq for Clock {
    fn eq(&self, other: &Self) -> bool {
        self.hours == other.hours && self.minutes == other.minutes
    }
}

impl Eq for Clock {}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(
            f,
            "{}:{}",
            format!("{:02}", self.hours),
            format!("{:02}", self.minutes)
        )
    }
}

impl fmt::Debug for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.debug_struct("Point")
            .field("hours", &self.hours)
            .field("minutes", &self.minutes)
            .finish()
    }
}
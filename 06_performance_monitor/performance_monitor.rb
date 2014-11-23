def measure(reps = 1)
  now = Time.now
  reps.times { yield }
  (Time.now - now) / reps
end
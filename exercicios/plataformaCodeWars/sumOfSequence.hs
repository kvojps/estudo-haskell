sequenceSum :: (Int, Int, Int) -> Int
sequenceSum (begin, end, step) = sum[begin,(begin+step)..end]
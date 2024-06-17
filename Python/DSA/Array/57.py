def insert(intervals, newInterval):
        merged = []
        i = 0
        n = len(intervals)

        # Add all intervals before newInterval
        while i < n and intervals[i][1] < newInterval[0]:
            merged.append(intervals[i])
            i += 1
        print(merged)

        # Merge overlapping intervals
        while i < n and intervals[i][0] <= newInterval[1]:
            newInterval = [min(newInterval[0], intervals[i][0]), max(newInterval[1], intervals[i][1])]
            i += 1
        merged.append(newInterval)
        print(merged)

        # Add all intervals after newInterval
        while i < n:
            merged.append(intervals[i])
            i += 1

        return merged

res=insert([[1,3],[6,9]],[2,5])
print(res)
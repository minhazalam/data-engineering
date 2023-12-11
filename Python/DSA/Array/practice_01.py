# print('How many day\'s temperature?')
# days = int(input('How many day\'s temperature?'))
# total = 0
# for _ in range(days):
#     next_day = int(input(f'Day {_}\'s high temperature: '))
#     total = total+next_day
# average_temp = total / days
# print('Average: ',average_temp)

# with array ds
temps = []
days = int(input('How many day\'s temperature?'))
for i in range(1, days+1):
    temps[i] = int(input(f'Day {i}\'s high temperature : '))


print('Average: ',sum(temps)/days)
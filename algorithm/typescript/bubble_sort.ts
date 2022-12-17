// https://news.mynavi.jp/techplus/article/programinglanguageoftheworld-45/
// cmd: $ bun run ./algorithm/typescript/bubble_sort.ts 

const data = [5, 18, 3, 19, 9, 20, 15, 1, 12, 2];
bubbleSort(data);
console.log(data)

function bubbleSort(arr: number[]): number[] {
  for (let i = 0; i < arr.length; i++) {
    for (let j = 0; j < arr.length - i -1; j++)     {
      if (arr[j] > arr[j + 1]) {
        const tmp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = tmp
      }
    }
  }
  return arr;
}

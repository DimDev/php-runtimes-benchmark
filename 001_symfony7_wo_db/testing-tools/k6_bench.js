import http from 'k6/http';
import { textSummary } from 'https://jslib.k6.io/k6-summary/0.0.2/index.js';

// export const options = {
//   // A number specifying the number of VUs to run concurrently.
//   vus: 5,
//   // A string specifying the total duration of the test run.
//   duration: '5s',
// };

// The function that defines VU logic.
//
// See https://grafana.com/docs/k6/latest/examples/get-started-with-k6/ to learn more
// about authoring k6 scripts.
//
export default function() {
  http.get('http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname');
}
// export function handleSummary(data) {
//   /*return {
//     'summary.json': JSON.stringify(data), //the default data object
//   };*/
//   const customizedData = {
//     http_reqs: data.metrics.http_reqs.values.count,

//     rate: data.metrics.http_reqs.values.rate,
//     avg_response_time: data.metrics['http_req_duration{expected_response:true}'].values.avg
//   }
//   return {
//     'stdout': textSummary(data, { indent: ' ', enableColors: true }), // Show the text summary to stdout...
//     'summary_full.json': JSON.stringify(data), // and a JSON with all the details...
//     'summary_short.json': JSON.stringify(customizedData), // and a JSON with all the details...
//   };
// }


import toLcov from "codecov-json-to-lcov";

try {
const codecovJSON = require("./fixtures/codecov.json");
console.log(toLcov(codecovJSON));
} catch (error) {
  core.setFailed(error.message);
}

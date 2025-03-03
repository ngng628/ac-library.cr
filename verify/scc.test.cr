# ac-library.cr by hakatashi https://github.com/google/ac-library.cr
#
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# verification-helper: PROBLEM https://judge.yosupo.jp/problem/scc

require "../src/scc.cr"

n, m = read_line.split.map(&.to_i64)
scc = AtCoder::SCC.new(n)
m.times do
  a, b = read_line.split.map(&.to_i64)
  scc.add_edge(a, b)
end

groups = scc.scc
p groups.size
groups.each do |group|
  puts ([group.size.to_i64] + group.to_a).join(" ")
end

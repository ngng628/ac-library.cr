# ac-library.cr by hakatashi https://github.com/google/ac-library.cr
#
# Copyright 2021 Google LLC
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

# verify-helper: PROBLEM https://judge.yosupo.jp/problem/lca

require "../atcoder/PriorityQueue.cr"
require "../atcoder/Graph.cr"

n, q = read_line.split.map(&.to_i64)
ps = read_line.split.map(&.to_i64)

tree = AtCoder::Tree(Nil, Int64).new(n)
ps.each_with_index do |p, i|
  tree.add_edge(i + 1, p)
end
q.times do
  u, v = read_line.split.map(&.to_i64)
  p tree.lca(u, v)
end
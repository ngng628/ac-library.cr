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

# verification-helper: PROBLEM https://judge.yosupo.jp/problem/convolution_mod

require "../src/convolution.cr"
require "../src/mod_int.cr"

_, _ = read_line.split.map(&.to_i64)
ais = read_line.split.map { |i| AtCoder::ModInt998244353.new(i.to_i64) }
bs = read_line.split.map { |i| AtCoder::ModInt998244353.new(i.to_i64) }
cs = AtCoder::Convolution.convolution(ais, bs)
puts cs.map(&.to_s).join(" ")

import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  group('anagrams', () {
    test('two empty strings are anagrams', () {
      expect(isAnagram('', ''), false);
    });
    test('a and a are anagrams', () {
      expect(isAnagram('a', 'a'), false);
    });
    test('a and b are not anagrams', () {
      expect(isAnagram('a', 'b'), false);
    });
    test('ab and ba are anagrams', () {
      expect(isAnagram('ab', 'ba'), false);
    });
    test('ab and ab are anagrams', () {
      expect(isAnagram('ab', 'ab'), false);
    });
    test('ab and abc are not anagrams', () {
      expect(isAnagram('ab', 'abc'), false);
    });
    test('abc and ab are not anagrams', () {
      expect(isAnagram('abc', 'ab'), false);
    });
    test('abc and bac are anagrams', () {
      expect(isAnagram('abc', 'bac'), false);
    });
    test('abc and bca are anagrams', () {
      expect(isAnagram('abc', 'bca'), false);
    });
    test('abc and cba are anagrams', () {
      expect(isAnagram('abc', 'cba'), false);
    });
    test('abc and cab are anagrams', () {
      expect(isAnagram('abc', 'cab'), false);
    });
    test('abc and acb are anagrams', () {
      expect(isAnagram('abc', 'acb'), false);
    });
    test('abc and cbaa are not anagrams', () {
      expect(isAnagram('abc', 'cbaa'), false);
    });
  });
}

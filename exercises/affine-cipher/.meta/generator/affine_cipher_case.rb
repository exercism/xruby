require 'generator/exercise_case'

class AffineCipherCase < Generator::ExerciseCase

  def workload
    return error_workload if error_expected?
    case property
    when 'encode' then encode_workload
    when 'decode' then decode_workload
    else raise 'unexpected property encountered'
    end
  end

  private

  def error_expected?
    Hash === expected && expected.key?('error')
  end

  def encode_workload
    key_a, key_b = input['key']['a'], input['key']['b']
    indent_lines(
      [
        "cipher = Affine.new(#{key_a}, #{key_b})",
        "plaintext = '#{input['phrase']}'",
        "ciphertext = '#{expected}'",
        "assert_equal ciphertext, cipher.encode(plaintext)"
      ], 4
    )
  end

  def decode_workload
    key_a, key_b = input['key']['a'], input['key']['b']
    indent_lines(
      [
        "cipher = Affine.new(#{key_a}, #{key_b})",
        "plaintext = '#{expected}'",
        "ciphertext = '#{input['phrase']}'",
        "assert_equal plaintext, cipher.decode(ciphertext)"
      ], 4
    )
  end

  def error_workload
    key_a, key_b = input['key']['a'], input['key']['b']
    indent_text(
        4,
        "assert_raises(ArgumentError) { Affine.new(#{key_a}, #{key_b}) }"
    )
  end
end

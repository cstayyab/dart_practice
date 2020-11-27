import 'package:math_expressions/math_expressions.dart';

extension ArithimeticEvaluation on String {
  double exprEval() {
    var p = Parser();
    var exp = p.parse(this);
    return exp.evaluate(EvaluationType.REAL, ContextModel());
  }
}

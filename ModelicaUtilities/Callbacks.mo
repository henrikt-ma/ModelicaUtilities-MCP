within ModelicaUtilities;
class Callbacks
  extends ExternalObject;

  function constructor

    output Callbacks functions;

    external "C" functions = ModelicaUtilityFunctions_getModelicaUtilityFunctions() annotation (
      Include = "#include \"ModelicaUtilityFunctions.c\"",
      IncludeDirectory="modelica://ModelicaUtilities/Resources/Include");

  end constructor;

  function destructor

    input Callbacks functions;

    external "C" ModelicaUtilityFunctions_freeModelicaUtilityFunctions(functions) annotation (
      Include = "#include \"ModelicaUtilityFunctions.c\"",
      IncludeDirectory="modelica://ModelicaUtilities/Resources/Include");

  end destructor;

annotation(Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
          Rectangle(
            lineColor={160,160,164},
            fillColor={160,160,164},
            fillPattern=FillPattern.Solid,
            extent={{-100.0,-100.0},{100.0,100.0}},
            radius=25.0)}));
end Callbacks;

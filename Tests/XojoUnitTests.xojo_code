#tag Class
Protected Class XojoUnitTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub AreEqualColorTest()
		  Dim c1 As Color = &c0000ff
		  Dim c2 As Color = &c0000ff
		  
		  Assert.AreEqual(c1, c2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AreEqualDateTest()
		  Dim d1 As New Date
		  d1.SQLDate = "2012-11-30"
		  
		  Dim d2 As New Date
		  d2.SQLDate = "2012-11-30"
		  
		  Assert.AreEqual(d1, d2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AreEqualDoubleTest()
		  Dim d1 As Double = 1.01
		  Dim d2 As Double = 1.02
		  
		  // Passes becaue the numbers are within the tolerance of 0.01
		  Assert.AreEqual(d1, d2, 0.01)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AreEqualIntegerArrayTest()
		  Dim i1() As Integer = Array(1, 2, 3, 4, 5)
		  Dim i2() As Integer
		  i2.Append(1)
		  i2.Append(2)
		  i2.Append(3)
		  i2.Append(4)
		  i2.Append(5)
		  
		  Assert.AreEqual(i1, i2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AreEqualIntegerTest()
		  Dim i1 As Integer = 42
		  Dim i2 As Integer = 7*6
		  
		  Assert.AreEqual(i1, i2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AreEqualStringArrayTest()
		  Dim s1() As String = Array("A", "B", "C")
		  Dim s2() As String
		  s2.Append("A")
		  s2.Append("B")
		  s2.Append("C")
		  
		  Assert.AreEqual(s1, s2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AreEqualStringTest()
		  Dim s1 As String = "Hello"
		  Dim s2 As String = "hello"
		  
		  // Passes because string comparisons are case-insensitive
		  Assert.AreEqual(s1, s2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AreSameTest()
		  Dim d1 As New Date
		  Dim d2 As Date
		  
		  d2 = d1
		  
		  Assert.AreSame(d1, d2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IsFalseTest()
		  Assert.IsFalse(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IsNilTest()
		  Dim d As Date
		  
		  Assert.IsNil(d)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IsNotNilTest()
		  Dim d As New Date
		  
		  Assert.IsNotNil(d)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IsTrueTest()
		  Assert.IsTrue(True)
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="FailedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeGroup"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PassedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

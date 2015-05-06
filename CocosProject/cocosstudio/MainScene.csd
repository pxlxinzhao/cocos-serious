<GameProjectFile>
  <PropertyGroup Type="Scene" Name="MainScene" ID="a2ee0952-26b5-49ae-8bf9-4f1d6279b798" Version="2.2.5.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="32" Speed="1.0000">
        <Timeline ActionTag="2028245871" Property="Position">
          <PointFrame FrameIndex="32" X="588.0925" Y="477.6299">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="2028245871" Property="Scale">
          <ScaleFrame FrameIndex="32" X="2.0559" Y="2.0056">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="2028245871" Property="FrameEvent">
          <EventFrame FrameIndex="32" Tween="False" Value="" />
        </Timeline>
      </Animation>
      <ObjectData Name="Scene" ctype="GameNodeObjectData">
        <Size X="800.0000" Y="480.0000" />
        <Children>
          <AbstractNodeData Name="Sprite_2" Visible="False" ActionTag="-614110621" Tag="1" IconVisible="False" LeftMargin="-0.5887" RightMargin="0.5887" TopMargin="0.2613" BottomMargin="-0.2613" ctype="SpriteObjectData">
            <Size X="800.0000" Y="480.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="399.4113" Y="239.7387" />
            <Scale ScaleX="1.0027" ScaleY="1.0045" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.4993" Y="0.4995" />
            <PreSize />
            <FileData Type="Normal" Path="800_400_white.png" Plist="" />
            <BlendFunc Src="770" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="HelloWorld_1" ActionTag="785794229" Tag="2" Alpha="204" IconVisible="False" VerticalEdge="BothEdge" LeftMargin="-77.3650" RightMargin="-82.6350" TopMargin="-73.4059" BottomMargin="-86.5941" ctype="SpriteObjectData">
            <Size X="960.0000" Y="640.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="402.6350" Y="233.4059" />
            <Scale ScaleX="0.8500" ScaleY="0.8500" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5033" Y="0.4863" />
            <PreSize />
            <FileData Type="Normal" Path="HelloWorld.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="Particle_1" ActionTag="2028245871" Tag="100" IconVisible="True" LeftMargin="64.5237" RightMargin="735.4763" TopMargin="61.4633" BottomMargin="418.5367" ctype="ParticleObjectData">
            <Size />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="64.5237" Y="418.5367" />
            <Scale ScaleX="1.2000" ScaleY="1.2000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.0807" Y="0.8720" />
            <PreSize />
            <FileData Type="Default" Path="Default/defaultParticle.plist" Plist="" />
            <BlendFunc Src="775" Dst="1" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameProjectFile>
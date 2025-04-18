CREATE TABLE [dbo].[EventSections] (
    [VenueId]    INT        NOT NULL,
    [EventId]    INT        NOT NULL,
    [SectionId]  INT        NOT NULL,
    [Price]      MONEY      NOT NULL,
    [RowVersion] ROWVERSION NULL,
    PRIMARY KEY CLUSTERED ([VenueId] ASC, [EventId] ASC, [SectionId] ASC),
    CONSTRAINT [FK_EventSections_Events] FOREIGN KEY ([VenueId], [EventId]) REFERENCES [dbo].[Events] ([VenueId], [EventId]) ON DELETE CASCADE,
    CONSTRAINT [FK_EventSections_Sections] FOREIGN KEY ([VenueId], [SectionId]) REFERENCES [dbo].[Sections] ([VenueId], [SectionId])
);


GO


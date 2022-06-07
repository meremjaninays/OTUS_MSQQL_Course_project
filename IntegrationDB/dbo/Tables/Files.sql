CREATE TABLE [dbo].[Files] (
    [SourceSystemId]   UNIQUEIDENTIFIER NOT NULL,
    [TargetSystemId]   BIGINT           NULL,
    [TaskId]           UNIQUEIDENTIFIER NULL,
    [FileBase64String] VARCHAR (MAX)    NULL,
    [FileName]         VARCHAR (250)    NULL,
    [IntegrationDate]  DATETIME2 (7)    NULL,
    PRIMARY KEY CLUSTERED ([SourceSystemId] ASC),
    CONSTRAINT [CHK_Files_FileName] CHECK ([FileName] like '%.%'),
    FOREIGN KEY ([TaskId]) REFERENCES [dbo].[Tasks] ([SourceSystemId])
);


GO
CREATE NONCLUSTERED INDEX [IX_SourceSystemId]
    ON [dbo].[Files]([SourceSystemId] ASC)
    INCLUDE([TargetSystemId]);


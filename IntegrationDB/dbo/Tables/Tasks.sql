CREATE TABLE [dbo].[Tasks] (
    [SourceObjectId]  UNIQUEIDENTIFIER NOT NULL,
    [TargetObjectId]  BIGINT           NULL,
    [IntegrationDate] DATETIME2 (7)    NULL,
    PRIMARY KEY CLUSTERED ([SourceObjectId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_SourceSystemId]
    ON [dbo].[Tasks]([SourceObjectId] ASC)
    INCLUDE([TargetObjectId]);


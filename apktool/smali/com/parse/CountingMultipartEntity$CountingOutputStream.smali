.class public Lcom/parse/CountingMultipartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private hasReportedDone:Z

.field private final progressCallback:Lcom/parse/ProgressCallback;

.field private totalSize:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/parse/ProgressCallback;J)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    .line 54
    iput-object p2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->progressCallback:Lcom/parse/ProgressCallback;

    .line 55
    iput-wide p3, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->totalSize:J

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 57
    return-void
.end method

.method private notifyCallback()V
    .locals 4

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->totalSize:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->progressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v1, v2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 81
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->hasReportedDone:Z

    goto :goto_0
.end method


# virtual methods
.method public write(I)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iget-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 70
    invoke-direct {p0}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->notifyCallback()V

    .line 71
    return-void
.end method

.method public write([BII)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    iget-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->uploadedSize:J

    .line 63
    invoke-direct {p0}, Lcom/parse/CountingMultipartEntity$CountingOutputStream;->notifyCallback()V

    .line 64
    return-void
.end method

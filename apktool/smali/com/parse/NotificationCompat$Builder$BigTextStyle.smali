.class public Lcom/parse/NotificationCompat$Builder$BigTextStyle;
.super Lcom/parse/NotificationCompat$Builder$Style;
.source "SourceFile"


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/parse/NotificationCompat$Builder$Style;-><init>()V

    .line 346
    return-void
.end method

.method public constructor <init>(Lcom/parse/NotificationCompat$Builder;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/parse/NotificationCompat$Builder$Style;-><init>()V

    .line 349
    invoke-virtual {p0, p1}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->setBuilder(Lcom/parse/NotificationCompat$Builder;)V

    .line 350
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 376
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 358
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 1

    .prologue
    .line 365
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mSummaryTextSet:Z

    .line 367
    return-object p0
.end method

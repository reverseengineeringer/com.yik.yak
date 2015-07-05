.class public Lcom/adjust/sdk/LogCatLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/Logger;


# instance fields
.field private logLevel:Lcom/adjust/sdk/Logger$LogLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/adjust/sdk/Logger$LogLevel;->INFO:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-virtual {p0, v0}, Lcom/adjust/sdk/LogCatLogger;->setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V

    .line 24
    return-void
.end method


# virtual methods
.method public varargs Assert(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x7

    const-string v1, "Adjust"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adjust/sdk/LogCatLogger;->logLevel:Lcom/adjust/sdk/Logger$LogLevel;

    iget v0, v0, Lcom/adjust/sdk/Logger$LogLevel;->androidLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 52
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adjust/sdk/LogCatLogger;->logLevel:Lcom/adjust/sdk/Logger$LogLevel;

    iget v0, v0, Lcom/adjust/sdk/Logger$LogLevel;->androidLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 73
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adjust/sdk/LogCatLogger;->logLevel:Lcom/adjust/sdk/Logger$LogLevel;

    iget v0, v0, Lcom/adjust/sdk/Logger$LogLevel;->androidLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 59
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method

.method public setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adjust/sdk/LogCatLogger;->logLevel:Lcom/adjust/sdk/Logger$LogLevel;

    .line 29
    return-void
.end method

.method public setLogLevelString(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 35
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/Logger$LogLevel;->valueOf(Ljava/lang/String;)Lcom/adjust/sdk/Logger$LogLevel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adjust/sdk/LogCatLogger;->setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    const-string v0, "Malformed logLevel \'%s\', falling back to \'info\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/LogCatLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adjust/sdk/LogCatLogger;->logLevel:Lcom/adjust/sdk/Logger$LogLevel;

    iget v0, v0, Lcom/adjust/sdk/Logger$LogLevel;->androidLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 45
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adjust/sdk/LogCatLogger;->logLevel:Lcom/adjust/sdk/Logger$LogLevel;

    iget v0, v0, Lcom/adjust/sdk/Logger$LogLevel;->androidLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 66
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.class Lpd;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(LoC;)LoC;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LoC",
            "<",
            "LhH;",
            ">;)",
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    invoke-static {v0}, Lpb;->a(LhH;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, LoC;

    invoke-static {v1}, Lpb;->c(Ljava/lang/Object;)LhH;

    move-result-object v1

    invoke-virtual {p0}, LoC;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, LoC;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Escape URI: unsupported encoding"

    invoke-static {v1, v0}, Los;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(LoC;I)LoC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LoC",
            "<",
            "LhH;",
            ">;I)",
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    invoke-static {v0}, Lpd;->a(LhH;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Escaping can only be applied to strings."

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Value Escaping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lpd;->a(LoC;)LoC;

    move-result-object p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method static varargs a(LoC;[I)LoC;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LoC",
            "<",
            "LhH;",
            ">;[I)",
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-static {p0, v2}, Lpd;->a(LoC;I)LoC;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static a(LhH;)Z
    .locals 1

    invoke-static {p0}, Lpb;->c(LhH;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

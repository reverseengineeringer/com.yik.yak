.class public Lfw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfw;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Boolean;)Lfw;
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    sget-object v1, Lfp;->H:Lfp;

    invoke-virtual {v0, v1}, Lfo;->a(Lfp;)V

    .line 165
    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    .line 166
    const-string v1, "&t"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 167
    const-string v1, "&exd"

    invoke-virtual {v0, v1, p0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 168
    const-string v1, "&exf"

    invoke-static {p1}, Lfw;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 169
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lfw;
    .locals 6

    .prologue
    .line 99
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    sget-object v1, Lfp;->Y:Lfp;

    invoke-virtual {v0, v1}, Lfo;->a(Lfp;)V

    .line 100
    new-instance v1, Lfw;

    invoke-direct {v1}, Lfw;-><init>()V

    .line 101
    const-string v0, "&t"

    const-string v2, "event"

    invoke-virtual {v1, v0, v2}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 102
    const-string v0, "&ec"

    invoke-virtual {v1, v0, p0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 103
    const-string v0, "&ea"

    invoke-virtual {v1, v0, p1}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 104
    const-string v0, "&el"

    invoke-virtual {v1, v0, p2}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 105
    const-string v2, "&ev"

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 106
    return-object v1

    .line 105
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public static b()Lfw;
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    sget-object v1, Lfp;->ak:Lfp;

    invoke-virtual {v0, v1}, Lfo;->a(Lfp;)V

    .line 89
    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    .line 90
    const-string v1, "&t"

    const-string v2, "appview"

    invoke-virtual {v0, v1, v2}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 91
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lfw;
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    sget-object v1, Lfp;->d:Lfp;

    invoke-virtual {v0, v1}, Lfo;->a(Lfp;)V

    .line 261
    invoke-static {p1}, LfI;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    :goto_0
    return-object p0

    .line 267
    :cond_0
    invoke-static {v0}, LfI;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 273
    const-string v2, "&cc"

    const-string v0, "utm_content"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 274
    const-string v2, "&cm"

    const-string v0, "utm_medium"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 275
    const-string v2, "&cn"

    const-string v0, "utm_campaign"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 276
    const-string v2, "&cs"

    const-string v0, "utm_source"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 277
    const-string v2, "&ck"

    const-string v0, "utm_term"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 278
    const-string v2, "&ci"

    const-string v0, "utm_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 279
    const-string v2, "&gclid"

    const-string v0, "gclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 280
    const-string v2, "&dclid"

    const-string v0, "dclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    .line 281
    const-string v2, "&gmob_t"

    const-string v0, "gmob_t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lfw;->a(Ljava/lang/String;Ljava/lang/String;)Lfw;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lfw;
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    sget-object v1, Lfp;->a:Lfp;

    invoke-virtual {v0, v1}, Lfo;->a(Lfp;)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lfw;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_0
    return-object p0

    .line 61
    :cond_0
    const-string v0, " MapBuilder.set() called with a null paramName."

    invoke-static {v0}, Lft;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lfw;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

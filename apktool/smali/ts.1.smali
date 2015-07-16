.class public Lts;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Number;

.field private final e:Ljava/lang/Number;


# direct methods
.method private constructor <init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lts;->a:I

    .line 110
    iput-object p2, p0, Lts;->c:Ljava/lang/Object;

    .line 111
    iput-object p3, p0, Lts;->d:Ljava/lang/Number;

    .line 112
    iput-object p4, p0, Lts;->e:Ljava/lang/Number;

    .line 113
    iput-object p5, p0, Lts;->b:Ljava/lang/Object;

    .line 114
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v0, p0, Lts;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 130
    :goto_0
    :try_start_1
    iget-object v0, p0, Lts;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Lts;
    .locals 6

    .prologue
    .line 117
    new-instance v0, Lts;

    iget v1, p0, Lts;->a:I

    iget-object v2, p0, Lts;->c:Ljava/lang/Object;

    iget-object v3, p0, Lts;->d:Ljava/lang/Number;

    iget-object v4, p0, Lts;->e:Ljava/lang/Number;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lts;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 141
    iget-object v0, p0, Lts;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lts;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 149
    :cond_0
    :goto_0
    iget-object v0, p0, Lts;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 151
    :try_start_1
    iget-object v0, p0, Lts;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 157
    :cond_1
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 163
    iget-object v0, p0, Lts;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lts;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lts;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 173
    :try_start_1
    iget-object v0, p0, Lts;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 179
    :cond_1
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

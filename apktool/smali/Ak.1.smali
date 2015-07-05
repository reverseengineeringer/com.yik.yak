.class public LAk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:LAm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, LAm;->c:LAm;

    iput-object v0, p0, LAk;->e:LAm;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 56
    sget-object v5, LAm;->c:LAm;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LAk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LAm;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LAm;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, LAm;->c:LAm;

    iput-object v0, p0, LAk;->e:LAm;

    .line 60
    iput-object p1, p0, LAk;->a:Ljava/lang/String;

    .line 61
    iput-object p2, p0, LAk;->c:Ljava/lang/String;

    .line 62
    iput-object p3, p0, LAk;->d:Ljava/lang/String;

    .line 63
    iput-object p4, p0, LAk;->b:Ljava/lang/String;

    .line 64
    iput-object p5, p0, LAk;->e:LAm;

    .line 65
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, LAk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(LAm;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, LAk;->e:LAm;

    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, LAk;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, LAk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, LAk;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LAk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, LAk;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LAk;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, LAk;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public e()LAm;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, LAk;->e:LAm;

    return-object v0
.end method

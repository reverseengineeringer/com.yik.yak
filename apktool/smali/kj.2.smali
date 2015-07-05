.class public final Lkj;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lhz;


# direct methods
.method constructor <init>(Lhz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LiE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhz;

    iput-object v0, p0, Lkj;->a:Lhz;

    return-void
.end method


# virtual methods
.method public a()Lhz;
    .locals 1

    iget-object v0, p0, Lkj;->a:Lhz;

    return-object v0
.end method

.class public final Lkg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lhw;


# direct methods
.method constructor <init>(Lhw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LiB;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhw;

    iput-object v0, p0, Lkg;->a:Lhw;

    return-void
.end method


# virtual methods
.method public a()Lhw;
    .locals 1

    iget-object v0, p0, Lkg;->a:Lhw;

    return-object v0
.end method
